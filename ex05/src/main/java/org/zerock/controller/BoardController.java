package org.zerock.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/board")
public class BoardController {
	
	private BoardService service;
	
	// 게시판 목록
	//@RequestMapping(value = "/board/list", method = RequestMethod.GET)
	@GetMapping("list")
	public void list(Model model,Criteria cri) {
		log.info("list");
		//                배열이름,  select된 결과물
		model.addAttribute("list", service.getList(cri));
		
		int total=service.getTotalCount(cri);
		
		model.addAttribute("pageMaker", new PageDTO(cri,total));
	}
	@GetMapping("read")
	public void read(long bno,Model model) {
		log.info("read="+bno);
		model.addAttribute("read", service.get(bno));
	}
	// 글쓰기 화면으로 이동하기 위해
	@GetMapping("register")
	public void register() {
		log.info("register");
	}
	// 글쓰기 화면에서 글쓰기 버튼을 클릭했을 때 제목, 내용, 작성자를 처리하기 위해.
	@PostMapping("register")
	
	//    리턴타입 메소드명           (타입 변수명)
	//      void add        (int  a )
	public String registerPost(BoardVO board, RedirectAttributes rttr) {
		
		// BoardAttachVO에 데이터가 비어 있으면,
		if(board.getAttachList()!=null) {
			board.getAttachList().forEach(attach->log.info(attach));
		}
		
		
		
		service.register(board); // 글쓰기 한후
		rttr.addAttribute("bno", board.getBno());
		//log.info("insert 한 후="+board);
		
		return "redirect:/board/read"; // board/read.jsp 화면 이동.
	}
	// 글수정 화면(modify.jsp)으로 이동하기 위해
	@GetMapping("modify")
	public void modifyGet(long bno,Model model) {
		log.info("modify="+bno);
		model.addAttribute("modify", service.get(bno));
	}
	// 글수정 화면에서 글수정 버튼을 클릭했을 때 제목, 내용을 처리하기 위해.
	@PostMapping("modify")
	public String modifyPost(BoardVO board, RedirectAttributes rttr) {
		log.info("modifyPost="+board);
		service.modify(board);
		rttr.addAttribute("bno", board.getBno());
		return "redirect:/board/read";
	}
	@GetMapping("remove")
	public String remove(long bno) {
		log.info("modifyPost="+bno);
		service.remove(bno);
		return "redirect:/board/list";
	}
	@GetMapping(value="getAttachList",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(int bno){
		log.info("getAttachList="+bno);
		return new ResponseEntity<>(service.getAttachList(bno),HttpStatus.OK);
		
	}
}
	
package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;

import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/board/*")
@Log4j
public class BoardController {
	
	@Autowired
    private BoardService bservice;
	
	/* 게시판 목록 페이지 접속 */
    @GetMapping("/list")
    // => @RequestMapping(value="list", method=RequestMethod.GET)
    public void boardListGET(Model model) {
        
        log.info("게시판 목록 페이지 진입");
        
        model.addAttribute("list", bservice.getList());
        
    }
	 // 게시판 등록 페이지 접속
	 @GetMapping("/enroll")
	 // => @RequestMapping(value="enroll", method=RequestMethod.GET)
	 public void boardEnrollGET() {
        
		 log.info("게시판 등록 페이지 진입");
        
	 }
	 
	 /* 게시판 등록 */
	 @PostMapping("/enroll")
	 public String boardEnrollPOST(BoardVO board, RedirectAttributes rttr) {
	        
		 log.info("BoardVO : " + board);
	        
		 bservice.enroll(board);
	        
		 rttr.addFlashAttribute("result", "enrol success");
	        
		 return "redirect:/board/list";
	        
	 }
	
	 /* 게시판 조회 */
	    @GetMapping("/get")
	    public void boardGetPageGET(int bno, Model model) {
	        
	        model.addAttribute("pageInfo", bservice.getPage(bno));
	        
	    }
	    
	    
}

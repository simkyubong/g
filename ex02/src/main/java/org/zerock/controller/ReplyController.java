package org.zerock.controller;


import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;
import org.zerock.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/replies")
@AllArgsConstructor
public class ReplyController {
	
	ReplyService service;
	
	@PostMapping(value="new",consumes="application/json",produces= {MediaType.TEXT_PLAIN_VALUE})
// 접근제어자      리턴타입                                     메소드명                                 변수타입    변수명(매개변수)
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		log.info("ReplyVO : "+vo);
		int insertcount = service.register(vo);
		log.info("Reply INSERT COUNT : "+insertcount);
	            //(조건식)     ? 참                                                                                                : 거짓
		return insertcount==1?new ResponseEntity<>("success",HttpStatus.OK)
				             :new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}// 댓글쓰기 끝
	@GetMapping(value="pages/{bno}/{page}",produces= {MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyPageDTO> getList(@PathVariable("bno") int bno,@PathVariable("page") int page){
		Criteria cri = new Criteria(page,10);
		
		log.info(cri);
		//                          select된 결과                                    통신이 정상적으로 처리
		return new ResponseEntity<>(service.getList(cri, bno),HttpStatus.OK);
	}// 댓글 목록 리스트 끝
	
	@GetMapping(value="/{rno}",produces= {MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_UTF8_VALUE})
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") int rno){
		return new ResponseEntity<>(service.get(rno),HttpStatus.OK);
		
	}// 댓글 상세 페이지 끝
	@DeleteMapping(value="/{rno}",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> remove(@PathVariable("rno") int rno){
		//int removecount = service.remove(rno);
		
		return service.remove(rno)==1?new ResponseEntity<>("success",HttpStatus.OK)
				                     :new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}// 댓글 삭제 끝
	@PutMapping(value="/{rno}",consumes="application/json",produces= {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@PathVariable("rno") int rno,
										 @RequestBody ReplyVO vo){
		vo.setRno(rno);
		//int removecount = service.remove(rno);
		
		return service.modify(vo)==1?new ResponseEntity<>("success",HttpStatus.OK)
				                     :new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}// 댓글 수정 끝
	
	
	
	
	
}














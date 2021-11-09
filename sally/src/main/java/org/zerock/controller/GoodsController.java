package org.zerock.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zerock.domain.AttachImageVO;
import org.zerock.domain.CateVO;
import org.zerock.domain.GoodsVO;
import org.zerock.mapper.AttachMapper;
import org.zerock.service.GoodsService;

import lombok.extern.log4j.Log4j;


@Controller
@RequestMapping("/goods/*")
@Log4j
public class GoodsController {
	
	@Autowired
	private AttachMapper attachMapper;
	
	//메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		
		log.info("메인 페이지 진입");
		
	}

	 @Inject
	 private GoodsService service;
	//카테고리
	 @RequestMapping(value = "/category", method = RequestMethod.GET)
	 public void getList(Model model) throws Exception {
	  
	  List<CateVO> category = null;
	  category = service.category();
	  model.addAttribute("category", category);
	 }
	 
	 //상품 목록
	 @RequestMapping(value = "/list", method = RequestMethod.GET)
	 public void getGoodsList(Model model) throws Exception {
	  
	  List<GoodsVO> list = null;
	  list = service.list();
	  model.addAttribute("list", list);
	 }
	 
	 @GetMapping("/display")
	 public ResponseEntity<byte[]> getImage(String fileName){
		
		log.info("getImage()...." + fileName);
		 
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
	 }
	 
	/* 이미지 정보 반환 */
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> getAttachList(int gdsNum){
		
		log.info("getAttachList.........." + gdsNum);
		
		return new ResponseEntity<List<AttachImageVO>>(attachMapper.getAttachList(gdsNum), HttpStatus.OK);
		
	}
	 
}
package org.zerock.controller;



import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;
import org.zerock.domain.PageDTO;
import org.zerock.domain.CateVO;
import org.zerock.service.AdminService;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/admin")
@Log4j
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	/* 관리자 메인 페이지 이동 */
    @RequestMapping(value="main", method = RequestMethod.GET)
    public void adminMainGET() throws Exception{
        
        log.info("관리자 페이지 이동");
        
    }
    
    /* 상품 관리 페이지 접속 */
    @RequestMapping(value = "goodsManage", method = RequestMethod.GET)
    public void goodsManageGET(Criteria cri, Model model) throws Exception{
        log.info("상품 관리 페이지 접속");
        
        /* 상품 리스트 데이터 */
		List list = adminService.goodsGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.goodsGetTotal(cri)));
    }
  
    /* 공지사항 관리 페이지 접속 */
    @RequestMapping(value = "noticeEnroll", method = RequestMethod.GET)
    public void authorManageGET() throws Exception{
        log.info("공지사항 페이지 접속");
    }
    
    /* 상품 등록 페이지 접속 */
    @RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
    public void goodsEnrollGET(Model model) throws Exception{
        log.info("상품 등록 페이지 접속");
        
        ObjectMapper objm = new ObjectMapper();
        
        List list = adminService.cateList();
        
        
        log.info("변경 전.........." + list);
        model.addAttribute("cateList", list);
        
        
    }
    
	@GetMapping(value="{cate1}",produces= MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<CateVO>> getList(@PathVariable("cate1") String cate1){		
		log.info("getList="+cate1);
		//                          select된 결과                                    통신이 정상적으로 처리
		return new ResponseEntity<>(adminService.cate2List(cate1),HttpStatus.OK);
	}// 댓글 목록 리스트 끝
    
    /* 상품 등록 */
   	@PostMapping("/goodsEnroll")
   	public String goodsEnrollPOST(GoodsVO goods, RedirectAttributes rttr) {
   		
   		log.info("goodsEnrollPOST......" + goods);
   		
   		adminService.goodsEnroll(goods);
   		
   		rttr.addFlashAttribute("enroll_result", goods.getGdsName());
   		
   		return "redirect:/admin/goodsManage";
   	}	
   	
   	/* 상품 조회 페이지 */
   	@GetMapping({"/goodsDetail", "/goodsModify"})
	public void goodsGetInfoGET(int gdsNum, Criteria cri, Model model) throws JsonProcessingException {
		
		log.info("goodsGetInfo()........." + gdsNum);
		
		ObjectMapper mapper = new ObjectMapper();
		
		/* 카테고리 리스트 데이터 */
		model.addAttribute("cateList", mapper.writeValueAsString(adminService.cateList()));		
		
		/* 목록 페이지 조건 정보 */
		model.addAttribute("cri", cri);
		
		/* 조회 페이지 정보 */
		model.addAttribute("goodsInfo", adminService.goodsGetDetail(gdsNum));
		
	}
   	
   	/* 상품 정보 수정 */
	@PostMapping("/goodsModify")
	public String goodsModifyPOST(GoodsVO vo, RedirectAttributes rttr) {
		
		log.info("goodsModifyPOST.........." + vo);
		
		int result = adminService.goodsModify(vo);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/admin/goodsManage";		
		
	}
	
	/* 상품 정보 삭제 */
	@PostMapping("/goodsDelete")
	public String goodsDeletePOST(int gdsNum, RedirectAttributes rttr) {
		
		log.info("goodsDeletePOST..........");
		
		int result = adminService.goodsDelete(gdsNum);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/goodsManage";
		
	}
	
	/* 첨부 파일 업로드 */
	@PostMapping("/uploadAjaxAction")
	public void uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		log.info("uploadAjaxActionPOST..........");
		String uploadFolder = "C:\\upload";
		
		// 날짜 폴더 경로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		// 향상된 for
		for(MultipartFile multipartFile : uploadFile) {
			
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* 파일 저장 */
			try {
				
				multipartFile.transferTo(saveFile);
				
				/* 썸네일 생성(ImageIO) */
				/*File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
				
				BufferedImage bo_image = ImageIO.read(saveFile);
				
					 비율 
					double ratio = 3;
					넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);
					
				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
								
				Graphics2D graphic = bt_image.createGraphics();
				
				graphic.drawImage(bo_image, 0, 0, width, height, null);
					
				ImageIO.write(bt_image, "jpg", thumbnailFile);*/
				
				/* 방법 2 */
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);	
				
				BufferedImage bo_image = ImageIO.read(saveFile);

					//비율 
					double ratio = 3;
					//넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);					
				
				
				Thumbnails.of(saveFile)
		        .size(width, height)
		        .toFile(thumbnailFile);
			
			} catch (Exception e) {
				e.printStackTrace();
			} 		
		}
		
		//기본 for
		for(int i = 0; i < uploadFile.length; i++) {
			log.info("-----------------------------------------------");
			log.info("파일 이름 : " + uploadFile[i].getOriginalFilename());
			log.info("파일 타입 : " + uploadFile[i].getContentType());
			log.info("파일 크기 : " + uploadFile[i].getSize());			
		}
		
	}
}

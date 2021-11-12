package org.zerock.controller;



import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.zerock.domain.MemberVO;
import org.zerock.domain.PageDTO;
import org.zerock.mapper.AttachMapper;
import org.zerock.domain.AttachImageVO;
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
    public void noticeManageGET() throws Exception{
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
	}
    
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
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		log.info("uploadAjaxActionPOST..........");
		
		/* 이미지 파일 체크 */
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {
				type = Files.probeContentType(checkfile.toPath());
				log.info("MIME TYPE : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(!type.startsWith("image")) {
				
				List<AttachImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
				
			}
			
		}// for
		
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
		
		/* 이미저 정보 담는 객체 */
		List<AttachImageVO> list = new ArrayList();
		
		// 향상된 for
		for(MultipartFile multipartFile : uploadFile) {
			
			/* 이미지 정보 객체 */
			AttachImageVO vo = new AttachImageVO();
			
			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			/* uuid 적용 파일 이름 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);
			
			/* 파일 저장 */
			try {
				
				multipartFile.transferTo(saveFile);
				
				/* 썸네일 생성(ImageIO) */
				
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
			
			list.add(vo);
			
		} //for
		
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);
		
		
		return result;
		
	}
	
	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName){
		
		log.info("deleteFile........" + fileName);
		
		File file = null;
		
		try {
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");
			
			log.info("originFileName : " + originFileName);
			
			file = new File(originFileName);
			
			file.delete();
			
			
		} catch(Exception e) {
			
			e.printStackTrace();
			
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
			
		}// catch
		
		return new ResponseEntity<String>("success", HttpStatus.OK);
		
	}
	
	/* 주문관리 페이지 접속 */
    @RequestMapping(value = "orderManage", method = RequestMethod.GET)
    public void orderManageGET() throws Exception{
    	
        log.info("주문관리 페이지 접속");
        
    }
    
    /* 회원목록 관리 */
    @RequestMapping(value = "memberManage", method = RequestMethod.GET)
    public void memberManageGET(Criteria cri, Model model) throws Exception{
    	
    	log.info("회원 관리 페이지 접속");
        
        /* 회원 리스트 데이터 */
		List list = adminService.memberList(cri);
		log.info("회원 관리 페이지 접속="+list);
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("list", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.memberGetTotal(cri)));
    	
        log.info("멤버관리 페이지 접속");
        
    }
    
    /* 회원 조회 페이지 */
   	@GetMapping({"/memberDetail", "/memberModify"})
	public void memberGetInfoGET(String memberId, Criteria cri, Model model) throws JsonProcessingException {
		
		log.info("memberGetInfo()........." + memberId);
		
		ObjectMapper mapper = new ObjectMapper();
		
				
		
		/* 목록 페이지 조건 정보 */
		model.addAttribute("cri", cri);
		
		/* 조회 페이지 정보 */
		model.addAttribute("memberInfo", adminService.memberGetDetail(memberId));
		
	}
    
    /* 회원 정보 수정 */
    @PostMapping("/memberModify")
	public String memberModifyPOST(MemberVO vo, RedirectAttributes rttr) {
		
		log.info("memberModifyPOST.........." + vo);
		
		int result = adminService.memberModify(vo);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/admin/memberManage";		
		
	}
    
    /* 회원 정보 삭제 */
	@PostMapping("/memberDelete")
	public String memberDeletePOST(String memberId, RedirectAttributes rttr) {
		
		log.info("memberDeletePOST..........");
		
		String result = adminService.memberDelete(memberId);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/memberManage";
		
	}
}
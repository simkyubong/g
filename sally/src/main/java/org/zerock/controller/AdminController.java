package org.zerock.controller;



import java.util.List;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;
import org.zerock.domain.PageDTO;
import org.zerock.domain.CateVO;
import org.zerock.service.AdminService;
import lombok.extern.log4j.Log4j;

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
}

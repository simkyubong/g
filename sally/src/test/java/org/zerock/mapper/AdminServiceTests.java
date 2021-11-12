package org.zerock.mapper;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.AttachImageVO;
import org.zerock.domain.GoodsVO;
import org.zerock.service.AdminService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")

public class AdminServiceTests {
	
	@Autowired
	private AdminService service;
	
	/* 상품 등록 & 상품 이미지 등록 테스트 */
	@Test
	public void goodsEnrollTEsts() {
		
		GoodsVO goods = new GoodsVO();
		// 상품 정보
		goods.setGdsName("service 테스트");
		goods.setCateParent("202001");
		goods.setCateName("20000");
		goods.setGdsPrice(20000);
		goods.setGdsStock(300);
		goods.setGdsDes("상품 소개 ");

		// 이미지 정보
		List<AttachImageVO> imageList = new ArrayList<AttachImageVO>(); 
		
		AttachImageVO image1 = new AttachImageVO();
		AttachImageVO image2 = new AttachImageVO();
		
		image1.setFileName("test Image 1");
		image1.setUploadPath("test image 1");
		image1.setUuid("test1111");
		
		image2.setFileName("test Image 2");
		image2.setUploadPath("test image 2");
		image2.setUuid("test2222");
		
		image2.setFileName("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
		image2.setUploadPath("test image 2");
		image2.setUuid("test2222");

		
		
		// goodsEnroll() 메서드 호출
		service.goodsEnroll(goods);
		
		System.out.println("등록된 VO : " + goods);
	}
}
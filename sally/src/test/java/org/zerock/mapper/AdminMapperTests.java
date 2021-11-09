package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.AttachImageVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests {
	
	@Autowired
	private AdminMapper mapper;
	
	/* 상품 등록 */
	
	@Test
	public void goodsEnrollTest() throws Exception{
		GoodsVO goods = new GoodsVO();
		
		goods.setGdsName("mapper 테스트");
		goods.setCateName("222");
		goods.setCateCode("0231");
		goods.setGdsPrice(20000);
		goods.setGdsStock(300);
		goods.setGdsDes("제품 소개 ");
		
		System.out.println("Before GoodsVO :" + goods);
		mapper.goodsEnroll(goods);
		System.out.println("After GoodsVO :" + goods);
	}
	
	
	/* 카테고리 리스트 */
	/*
	@Test
	public void cateListTest() throws Exception{
		
		System.out.println("cateList()..........." + mapper.cateList());
		
	}
	*/
	/* 상품 리스트 & 상품 총 갯수 */
//	@Test
//	public void goodsGetListTest() {
//		
//		Criteria cri = new Criteria();
//		
//		/* 검색조건 */
//		cri.setKeyword("테스트");
//		
//		/* 검색 리스트 */
//		List list = mapper.goodsGetList(cri);
//		for(int i = 0; i < list.size(); i++) {
//			System.out.println("result......." + i + " : " + list.get(i));
//		}
//		
//		/* 상품 총 갯수 */
//		int result = mapper.goodsGetTotal(cri);
//		System.out.println("resutl.........." + result);
//		
//		
//	}
	
	/* 상품 조회 페이지 */
	/*@Test
	public void goodsGetDetailTest() {
		
		int gdsNum = 1;
		
		GoodsVO result = mapper.goodsGetDetail(gdsNum);
		
		System.out.println("상품 조회 데이터 : " + result);
		
		
	}*/
	
	/* 상품 정보 수정 */
	/*@Test
	public void goodsModifyTest() {
		
		GoodsVO goods = new GoodsVO();
		
		goods.setGdsNum(2);
		goods.setGdsName("mapper 테스트1");
		goods.setCateName("TOP");
		goods.setCateCode("TEE");
		goods.setGdsPrice(60000);
		goods.setGdsStock(300);
		goods.setGdsDes("상품 설명");
		
		mapper.goodsModify(goods);
		
	}*/
	
	/* 상품 정보 삭제 
	@Test
	public void goodsDeleteTest() {
		
		int gdsNum = 1;
		
		int result = mapper.goodsDelete(gdsNum);
		
		if(result == 1) {
			System.out.println("삭제 성공");
		}
		
	}*/
	
	/* 이미지 등록 */
	/*@Test
	public void imageEnrollTest() {
		
		AttachImageVO vo = new AttachImageVO();
		
		vo.setGdsNum(1);
		vo.setFileName("test");
		vo.setUploadPath("test");
		vo.setUuid("test2");
		
		mapper.imageEnroll(vo);
		
	}*/
}

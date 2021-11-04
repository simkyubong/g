package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests {
	
	@Autowired
	private AdminMapper mapper;
	
	/* 상품 등록 */
	/*
	@Test
	public void goodsEnrollTest() throws Exception{
		GoodsVO goods = new GoodsVO();
		
		goods.setGoodsName("mapper 테스트");
		goods.setCateCode("0231");
		goods.setGoodsPrice(20000);
		goods.setGoodsStock(300);
		goods.setGoodsIntro("제품 소개 ");
		goods.setGoodsContents("제품 설명 ");
		
		mapper.goodsEnroll(goods);
	}
	*/
	
	/* 카테고리 리스트 */
	/*
	@Test
	public void cateListTest() throws Exception{
		
		System.out.println("cateList()..........." + mapper.cateList());
		
	}
	*/
	/* 상품 리스트 & 상품 총 갯수 */
	@Test
	public void goodsGetListTest() {
		
		Criteria cri = new Criteria();
		
		/* 검색조건 */
		cri.setKeyword("테스트");
		
		/* 검색 리스트 */
		List list = mapper.goodsGetList(cri);
		for(int i = 0; i < list.size(); i++) {
			System.out.println("result......." + i + " : " + list.get(i));
		}
		
		/* 상품 총 갯수 */
		int result = mapper.goodsGetTotal(cri);
		System.out.println("resutl.........." + result);
		
		
	}
}

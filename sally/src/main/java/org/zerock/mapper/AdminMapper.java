package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.CateVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;

public interface AdminMapper {
	
	/* 상품 등록 */
	public void goodsEnroll(GoodsVO goods);
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList();
	
	/* 카테고리 리스트 */
	public List<CateVO> cate2List(String cate1);
	
	/* 상품 리스트 */
	public List<GoodsVO> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);
}

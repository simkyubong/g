package org.zerock.service;

import java.util.List;

import org.zerock.domain.CateVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.GoodsVO;
import org.zerock.domain.MemberVO;

public interface AdminService {
	/* 상품 등록 */
	public void goodsEnroll(GoodsVO goods);
	
	/* 1차 카테고리 리스트 */
	public List<CateVO> cateList();
	
	/* 2차 카테고리 리스트 */
	public List<CateVO> cate2List(String cate1);
	
	/* 상품 리스트 */
	public List<GoodsVO> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);	
	
	/* 상품 조회 페이지 */
	public GoodsVO goodsGetDetail(int gdsNum);
	
	/* 상품 수정 */
	public int goodsModify(GoodsVO vo);
	
	/* 상품 정보 삭제 */
	public int goodsDelete(int gdsNum);
	
	/* 회원목록 */
    public List<MemberVO> memberList(Criteria cri);
    
    /* 회원 전체 인원 */
	public int memberGetTotal(Criteria cri);
	
	/* 회원 정보 조회 페이지 */
	public MemberVO memberGetDetail(String memberId);
	
	/* 회원 정보 수정 */
	public int memberModify(MemberVO vo);
	
	/* 회원 정보 삭제 */
	public String memberDelete(String memberId);

}
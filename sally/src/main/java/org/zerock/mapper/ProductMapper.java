package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.QnaCriteria;
import org.zerock.domain.ReviewCriteria;
import org.zerock.domain.ProductVO;
import org.zerock.domain.ReviewVO;

public interface ProductMapper {// �������̽�
	
	
	// 게시판 목록리스트(paging처리 안된거)
	public List<ProductVO> getList();
	// 게시판 목록리스트(paging처리 된거)
	public List<ProductVO> getListWithPaging(QnaCriteria cri);
	// tbl_board테이블의 전체 갯수
	public int getTotalCount(QnaCriteria cri);
	
	
	
	// �߻�޼���(�Խ��� �۾���) - insert�� ó���ǰ� ������ pk���� �� �ʿ䰡 ���� ���(�ܼ� �Խñ۾���)
	public void insert(ProductVO board);
	// �߻�޼���(�Խ��� �۾���) - insert���� ����ǰ� ������ pk���� �˾ƾ� �ϴ� ���(�Խñ۾���+÷������)
	public void insertSelectKey(ProductVO board);
	// �߻�޼���(�Խ��� ��� ����Ʈ���� ������ Ŭ���� �� ������ �������� ��ȸ)
	public ProductVO read(long bno);
	
	
	
	
	
	
	
	
	// 게시판 목록리스트(paging처리 안된거)
	public List<ReviewVO> getReviewList();
	// 게시판 목록리스트(paging처리 된거)
	public List<ReviewVO> getReviewListWithPaging(ReviewCriteria cri);
	// 테이블의 전체 갯수
	public int getReviewTotalCount(ReviewCriteria cri);
	
	
	
	// �߻�޼���(�Խ��� �۾���) - insert�� ó���ǰ� ������ pk���� �� �ʿ䰡 ���� ���(�ܼ� �Խñ۾���)
	public void insertReview(ReviewVO board);
	// �߻�޼���(�Խ��� �۾���) - insert���� ����ǰ� ������ pk���� �˾ƾ� �ϴ� ���(�Խñ۾���+÷������)
	public void insertReviewSelectKey(ReviewVO board);
	// �߻�޼���(�Խ��� ��� ����Ʈ���� ������ Ŭ���� �� ������ �������� ��ȸ)
	public ReviewVO readReview(long bno);
}


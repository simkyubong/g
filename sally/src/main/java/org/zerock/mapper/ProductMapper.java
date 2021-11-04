package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.ProductVO;

public interface ProductMapper {// �������̽�
	// 게시판 목록리스트(paging처리 안된거)
	public List<ProductVO> getList();
	// 게시판 목록리스트(paging처리 된거)
	public List<ProductVO> getListWithPaging(Criteria cri);
	// tbl_board테이블의 전체 갯수
	public int getTotalCount(Criteria cri);
	
	
	
	// �߻�޼���(�Խ��� �۾���) - insert�� ó���ǰ� ������ pk���� �� �ʿ䰡 ���� ���(�ܼ� �Խñ۾���)
	public void insert(ProductVO board);
	// �߻�޼���(�Խ��� �۾���) - insert���� ����ǰ� ������ pk���� �˾ƾ� �ϴ� ���(�Խñ۾���+÷������)
	public void insertSelectKey(ProductVO board);
	// �߻�޼���(�Խ��� ��� ����Ʈ���� ������ Ŭ���� �� ������ �������� ��ȸ)
	public ProductVO read(long bno);
}








package org.zerock.service;

import java.util.List;
import org.zerock.domain.QnaCriteria;
import org.zerock.domain.ProductVO;

public interface ProductService {
	// �Խ��� ��������
	public ProductVO get(long bno);


	// 목록리스트(페이징 처리 된거)
	public List<ProductVO> getList(QnaCriteria cri);
	// tbl_board테이블의 전체 갯수
	public int getTotalCount(QnaCriteria cri);
	public Iterable<ProductVO> getList();
}

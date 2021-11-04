package org.zerock.service;

import java.util.List;
import org.zerock.domain.Criteria;
import org.zerock.domain.ProductVO;

public interface ProductService {
	// �Խ��� ��������
	public ProductVO get(long bno);


	// 목록리스트(페이징 처리 된거)
	public List<ProductVO> getList(Criteria cri);
	// tbl_board테이블의 전체 갯수
	public int getTotalCount(Criteria cri);
	public Iterable<ProductVO> getList();
}

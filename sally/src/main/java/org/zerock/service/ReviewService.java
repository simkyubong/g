package org.zerock.service;

import java.util.List;
import org.zerock.domain.ReviewCriteria;
import org.zerock.domain.ReviewVO;

public interface ReviewService {
	
	// �Խ��� ��������
	public ReviewVO getReview(long rno);


	// 목록리스트(페이징 처리 된거)
	public List<ReviewVO> getReviewList(ReviewCriteria cri);
	// 테이블의 전체 갯수
	public int getReviewTotalCount(ReviewCriteria cri);
	public Iterable<ReviewVO> getReviewList();
}

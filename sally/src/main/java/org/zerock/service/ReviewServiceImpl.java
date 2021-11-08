package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.ReviewCriteria;
import org.zerock.domain.ReviewVO;
import org.zerock.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class ReviewServiceImpl implements ReviewService {
	private ProductMapper mapper;
	
	@Override
	public ReviewVO getReview(long rno) {
		log.info("getReview....."+rno);
		return mapper.readReview(rno);
	}
	@Override
	public List<ReviewVO> getReviewList(ReviewCriteria cri) {
		log.info("getReviewList........");
		return mapper.getReviewListWithPaging(cri);
	}
	@Override
	public int getReviewTotalCount(ReviewCriteria cri) {
		return mapper.getReviewTotalCount(cri);
	}
	@Override
	public Iterable<ReviewVO> getReviewList() {
		// TODO Auto-generated method stub
		return null;
	}
}

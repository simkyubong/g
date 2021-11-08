package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@ToString
public class ReviewPageDTO {
	// 시작페이지
	private int startPage;
	// 마지막페이지
	private int endPage;
	// 이전버튼, 다음버튼 표시 유무
	private boolean prev, next;
	// tbl_board테이블의 전체 갯수
	private int total;
	// Criteria
	private ReviewCriteria rvcri;
	
	public ReviewPageDTO(ReviewCriteria rvcri, int total) {
		this.rvcri=rvcri;
		this.total=total;
		
		// 첫번째페이지번호가 1일때 마지막페이지 번호 5
		//  1-> 5 : 0.2 -> 1 * 5 = 5
		//  2-> 5 : 0.4 -> 1 * 5 = 5
		//  3-> 5 : 0.6 -> 1 * 5 = 5
		//  4-> 5 : 0.8 -> 1 * 5 = 5
		//  5-> 5 : 1.0 -> 1 * 5 = 5
		// 첫번째페이지번호가 6일때 마지막페이지 번호 10
		//  6->10 : 1.2 -> 2 * 5 = 10
		//  7->10 : 1.4 -> 2 * 5 = 10
		//  8->10 : 1.6 -> 2 * 5 = 10
		//  9->10 : 1.8 -> 2 * 5 = 10
		// 10->10 : 2.0 -> 2 * 5 = 10
		// 첫번째페이지번호가 11일때 마지막페이지 번호 15
		// 11->15 : 2.2 -> 3 * 5 = 15
		// 12->15 : 2.4 -> 3 * 5 = 15
		// 13->15 : 2.6 -> 3 * 5 = 15
		// 14->15 : 2.8 -> 3 * 5 = 15
		// 15->15 : 3.0 -> 3 * 5 = 15
		// 첫번째페이지번호가 16일때 마지막페이지 번호 20
		// 16->20 : 3.2 -> 4 * 5 = 20
		// 17->20 : 3.4 -> 4 * 5 = 20
		// 18->20 : 3.6 -> 4 * 5 = 20
		// 19->20 : 3.8 -> 4 * 5 = 20
		// 20->20 : 4.0 -> 4 * 5 = 20
		// 첫번째페이지번호가 21일때 마지막페이지 번호 25
		this.endPage=(int)(Math.ceil(rvcri.getRvpageNum()/5.0))*5;
		
		this.startPage=this.endPage-4;
		
		int realEnd = (int)(Math.ceil(     (total*1.0)/rvcri.getRvamount()      ));
		
		if(realEnd < this.endPage) {
			this.endPage=realEnd;
		}
		// 이전버튼 유무
		this.prev = this.startPage > 1;
		// 다음버튼 유무
		this.next = this.endPage < realEnd;
		
		
		
	}
	

}

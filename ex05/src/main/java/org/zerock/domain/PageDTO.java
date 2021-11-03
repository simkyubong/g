package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {
	// 시작페이지
	private int startPage;
	// 마지막페이지
	private int endPage;
	// 이전버튼, 다음버튼 표시 유무
	private boolean prev, next;
	// tbl_board테이블의 전체 갯수
	private int total;
	// Criteria
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri=cri;
		this.total=total;
		
		// 첫번째페이지번호가 1일때 마지막페이지 번호 10
		// 1->10 : 0.1 -> 1 * 10 = 10
		// 2->10 : 0.2 -> 1 * 10 = 10
		// 3->10 : 0.3 -> 1 * 10 = 10
		// 4->10 : 0.4 -> 1 * 10 = 10
		// 5->10 : 0.5 -> 1 * 10 = 10
		// 6->10 : 0.6 -> 1 * 10 = 10
		// 7->10 : 0.7 -> 1 * 10 = 10
		// 8->10 : 0.8 -> 1 * 10 = 10
		// 9->10 : 0.9 -> 1 * 10 = 10
		// 10->10 : 1 ->  1 * 10 = 10
		// 첫번째페이지번호가 11일때 마지막페이지 번호 20
		// 11->20 : 1.1 -> 2 * 10 = 20
		// 12->20 : 1.2 -> 2 * 10 = 20
		// 13->20 : 1.3 -> 2 * 10 = 20
		// 14->20 : 1.4 -> 2 * 10 = 20
		// 15->20 : 1.5 -> 2 * 10 = 20
		// 16->20 : 1.6 -> 2 * 10 = 20
		// 17->20 : 1.7 -> 2 * 10 = 20
		// 18->20 : 1.8 -> 2 * 10 = 20
		// 19->20 : 1.9 -> 2 * 10 = 20
		// 20->20 : 2 ->   2 * 10 = 20
		// 첫번째페이지번호가 21일때 마지막페이지 번호 30
		this.endPage=(int)(Math.ceil(cri.getPageNum()/10.0))*10;
		
		this.startPage=this.endPage-9;
		
		int realEnd = (int)(Math.ceil(     (total*1.0)/cri.getAmount()      ));
		
		if(realEnd < this.endPage) {
			this.endPage=realEnd;
		}
		// 이전버튼 유무
		this.prev = this.startPage > 1;
		// 다음버튼 유무
		this.next = this.endPage < realEnd;
		
		
		
	}
	

}

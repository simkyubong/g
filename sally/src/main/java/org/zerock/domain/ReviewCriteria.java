package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewCriteria {
	// 1) 페이지번호(pageNum)
	private int rvpageNum;
	// 2) 한 페이지당 몇 개의 데이터를 보여줄것인지?(amount)
	private int rvamount;
	// +
	// 3) 검색종류
	private String type;
	// 4) keyword
	private String keyword;
	
	public ReviewCriteria() {
		this(1,3);
	}
	public ReviewCriteria(int pageNum, int amount) {
		this.rvpageNum=pageNum;
		this.rvamount=amount;
	}
}

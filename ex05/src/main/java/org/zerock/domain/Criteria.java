package org.zerock.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	// 1) 페이지번호(pageNum)
	private int pageNum;
	// 2) 한 페이지당 몇 개의 데이터를 보여줄것인지?(amount)
	private int amount;
	// + 
	// 3) 검색종류
	private String type;
	// 4) keyword
	private String keyword;
	
	public Criteria() {
		this(1,10);
	}
	public Criteria(int pageNum, int amount) {
		this.pageNum=pageNum;
		this.amount=amount;
	}
}

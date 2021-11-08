package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	// 리뷰 번호
	private int rno;
	// 리뷰 점수
	private int rating;
	// 리뷰 내용
	private String content;
	// 리뷰 이미지
	private String reviewimg;
	// 작성자
	private String writer;
}

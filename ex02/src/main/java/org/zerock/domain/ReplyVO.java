package org.zerock.domain;

import java.util.Date;
import lombok.Data;

@Data
public class ReplyVO {
	// 댓글번호
	private int rno;
	// 게시판번호
	private int bno;
	// 댓글내용
	private String reply;
	// 댓글작성자
	private String replyer;
	// 댓글작성일
	private Date replydate;
	// 댓글수정일
	private Date updatedate;
}

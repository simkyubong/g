package org.zerock.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
@Data
@AllArgsConstructor
@Getter
public class ReplyPageDTO {
	// tbl_reply테이블의 해당 게시물 전체 건수
	private int replyCnt;
	// tbl_reply테이블의 해당 게시물의 목록 리스트
	private List<ReplyVO> list;
	
}

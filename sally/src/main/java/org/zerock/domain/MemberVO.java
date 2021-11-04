package org.zerock.domain;

import lombok.Data;

/*import java.util.Date;*/


@Data
public class MemberVO {
	
		//회원 id
		private String memberId;
		
		//회원 비밀번호
		private String memberPw;
		
		//회원 이름
		private String memberName;
		
		//회원 이메일
		private String memberEmail;
		
		//등록일자
		private int regDate;
		
		// 관리자 구분(0:일반사용자, 1:관리자)
		private int adminCk;
		
		//회원 포인트
		private int point;

		
		
		
	}
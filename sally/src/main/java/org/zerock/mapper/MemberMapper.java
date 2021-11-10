package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.MemberVO;

public interface MemberMapper {
	// 회원가입
	public void memberJoin(MemberVO member);
	
	// 아이디 중복 검사
	public int idCheck(String memberId);
	
	// 로그인
    public MemberVO memberLogin(MemberVO member);
    
	// 회원정보 수정 
    public void updateMember(MemberVO member);
    
    // 회원비밀번호 수정처리
    public void updatePw(MemberVO memeber);
    
    public List<MemberVO> memberList();
 
}

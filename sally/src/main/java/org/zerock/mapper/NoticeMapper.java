package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.NoticeVO;

public interface NoticeMapper {
	public List<NoticeVO> list();
	
	// 게시물 작성
	public void write(NoticeVO vo);
	
	// 게시물 조회
	public NoticeVO view(int bno);
	
	// 게시물 수정
	public void modify(NoticeVO vo);
	
	// 게시물 삭제
	public void delete(int bno);
	
	// 게시물 총 갯수
	public int count();
	
	// 게시물 목록 + 페이징
	public List<NoticeVO> listPage(int displayPost, int postNum);

	// 게시물 목록 + 페이징 + 검색
	public List<NoticeVO> listPageSearch(
	int displayPost, int postNum, String searchType, String keyword);

	// 게시물 총 갯수 + 검색 적용
	public int searchCount(String searchType, String keyword);
	

}

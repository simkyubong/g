package org.zerock.service;

import java.util.List;

import org.zerock.domain.NoticeVO;

public interface NoticeService {
	
	// 게시물 목록
	public List<NoticeVO> list() throws Exception;

	// 게시물 작성
	public void write(NoticeVO vo) throws Exception;
	
	// 게시물 조회
	public NoticeVO view(int bno) throws Exception;
	
	// 게시물 수정
	public void modify(NoticeVO vo) throws Exception;
	
	// 게시물 삭제
	public void delete(int bno) throws Exception;
	
	// 게시물 총 갯수
	public int count() throws Exception;
	
	// 게시물 목록 + 페이징
	public List<NoticeVO> listPage(int displayPost, int postNum) throws Exception;

	// 게시물 목록 + 페이징 + 검색
	public List<NoticeVO> listPageSearch(
	  int displayPost, int postNum, String searchType, String keyword) throws Exception;
	
	// 게시물 총 갯수 + 검색 적용
	public int searchCount(String searchType, String keyword) throws Exception;
}

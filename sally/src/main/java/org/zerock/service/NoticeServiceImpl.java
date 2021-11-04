package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import org.zerock.mapper.NoticeMapper;
import org.zerock.domain.NoticeVO;

@Service
public class NoticeServiceImpl implements NoticeService {

	@Inject
	private NoticeMapper dao;
	
	// 게시물 목록
	@Override
	public List<NoticeVO> list() throws Exception {
		
		return dao.list();
	}

	// 게시물 작성
	@Override
	public void write(NoticeVO vo) throws Exception {

		dao.write(vo);
	}

	// 게시물 조회
	@Override
	public NoticeVO view(int bno) throws Exception {

	 return dao.view(bno);
	}
	
	// 게시물 수정
	@Override
	public void modify(NoticeVO vo) throws Exception {
	  
	 dao.modify(vo);
	}
	
	// 게시물 삭제
	public void delete(int bno) throws Exception {
	 dao.delete(bno);
	}
	
	// 게시물 총 갯수
	@Override
	public int count() throws Exception {
	 return dao.count();
	}
	
	// 게시물 목록 + 페이징
	@Override
	public List<NoticeVO> listPage(int displayPost, int postNum) throws Exception {
	 return dao.listPage(displayPost, postNum);
	}
	
	// 게시물 목록 + 페이징 + 검색
	@Override
	public List<NoticeVO> listPageSearch(
	  int displayPost, int postNum, String searchType, String keyword) throws Exception {
	 return  dao.listPageSearch(displayPost, postNum, searchType, keyword);
	}
	
	// 게시물 총 갯수
	@Override
	public int searchCount(String searchType, String keyword) throws Exception {
	 return dao.searchCount(searchType, keyword);
	}
}

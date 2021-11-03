package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardAttachVO;

public interface BoardAttachMapper {
	// 파일업로드한 파일정보들을 tbl_attach테이블에 insert함.
	public void insert(BoardAttachVO vo);
	// 파일업로드한 파일정보들을 tbl_attach테이블에 delete함.
	public void delete(String uuid);
	// 파일업로드한것을 사용자가 볼 수 있도록 화면에 조회할 수 있도록 함.
	public List<BoardAttachVO> findByBno(int bno);
}

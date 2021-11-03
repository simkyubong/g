package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardService {
	// �Խ��� �۾���
	public void register(BoardVO board);
	// �Խ��� ��������
	public BoardVO get(long bno);
	// �Խ��� �ۼ���
	public boolean modify(BoardVO board);
	// �Խ��� �ۻ���
	public boolean remove(long bno);
	// 목록리스트(페이징 처리 안된거)
	//public List<BoardVO> getList();
	// 목록리스트(페이징 처리 된거)
	public List<BoardVO> getList(Criteria cri);
	// tbl_board테이블의 전체 갯수
	public int getTotalCount(Criteria cri);
	
	public List<BoardAttachVO> getAttachList(int bno);
	
	
}

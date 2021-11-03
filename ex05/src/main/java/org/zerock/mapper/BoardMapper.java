package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {// �������̽�
	// 게시판 목록리스트(paging처리 안된거)
	public List<BoardVO> getList();
	// 게시판 목록리스트(paging처리 된거)
	public List<BoardVO> getListWithPaging(Criteria cri);
	// tbl_board테이블의 전체 갯수
	public int getTotalCount(Criteria cri);
	
	
	
	// �߻�޼���(�Խ��� �۾���) - insert�� ó���ǰ� ������ pk���� �� �ʿ䰡 ���� ���(�ܼ� �Խñ۾���)
	public void insert(BoardVO board);
	// �߻�޼���(�Խ��� �۾���) - insert���� ����ǰ� ������ pk���� �˾ƾ� �ϴ� ���(�Խñ۾���+÷������)
	public void insertSelectKey(BoardVO board);
	// �߻�޼���(�Խ��� ��� ����Ʈ���� ������ Ŭ���� �� ������ �������� ��ȸ)
	public BoardVO read(long bno);
	// �߻�޼���(�Խ��� �ۻ���)
	public int delete(long bno);
	// �߻�޼���(�Խ��� �ۼ���)
	public int update(BoardVO board);
	// tbl_board테이블 replycnt컬럼에 +1
	public void updateReplyCnt(@Param("bno") int bno,@Param("amount") int amount);
}








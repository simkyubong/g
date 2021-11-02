package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

public interface ReplyMapper {
	// 댓글쓰기(insert) - Create
	public int insert(ReplyVO vo);
	// 댓글상세페이지(select) - Read
	// select된 결과가 한 건이니까 ReplyVO 타입
	public ReplyVO read(int rno);
	// 댓글삭제(delete) - Delete
	public int delete(int rno);
	// 댓글수정(update) - Update
	public int update(ReplyVO vo);
	// 댓글목록리스트(select된 결과가 여러 건이니까 ArrayList 타입)
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri,
										   @Param("bno") int bno);
	public int getCountByBno(int bno);
}

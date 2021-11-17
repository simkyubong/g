package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyPageDTO;
import org.zerock.domain.ReplyVO;
import org.zerock.mapper.BoardMapper;
import org.zerock.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	// springframework 버전 4.3 이상이면 생략가능
	//@Setter(onMethod_=@Autowired)
	private ReplyMapper mapper;
	private BoardMapper boardmapper;
	// 댓글 쓰기
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		log.info("register...."+vo);
		boardmapper.updateReplyCnt(vo.getBno(), 1);
		return mapper.insert(vo);
	}
	// 댓글상세페이지(select된 결과가 한 건이니까 ReplyVO 타입)
	@Override
	public ReplyVO get(int rno) {
		log.info("get...."+rno);
		return mapper.read(rno);
	}
	//댓글삭제
	@Transactional
	@Override
	public int remove(int rno) {
		log.info("remove....."+rno);
		ReplyVO vo=mapper.read(rno);
		boardmapper.updateReplyCnt(vo.getBno(), -1);
		return mapper.delete(rno);
	}
	// 댓글수정
	@Override
	public int modify(ReplyVO vo) {
		log.info(vo);
		return mapper.update(vo);
	}
	// 댓글목록리스트(select된 결과가 여러 건이니까 ArrayList 타입)
	@Override
	public ReplyPageDTO getList(Criteria cri, int bno) {
		log.info("get Reply List of a Board : "+bno);
		return new ReplyPageDTO(mapper.getCountByBno(bno),
								mapper.getListWithPaging(cri, bno));
	}
	
}

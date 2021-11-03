package org.zerock.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BoardAttachVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.mapper.BoardAttachMapper;
import org.zerock.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {
	//@Setter(onMethod_=@Autowired) spring 4.3 �̻󿡼� �ڵ� ó��.
	// BoardMapper mapper = new BoardMapper();
	private BoardMapper mapper;	// tbl_board테이블
	private BoardAttachMapper attachMapper;	// tbl_attach
	@Transactional
	@Override
	public void register(BoardVO board) {
		log.info("register....."+board);
		mapper.insertSelectKey(board);
		
		if(board.getAttachList()==null || board.getAttachList().size()<=0) {
			return;
		}
		
		board.getAttachList().forEach(attach->{
// BoardAttachVO필통에 넣어라 (BoardVO필통에 있는 bno를 가져와서)
			attach.setBno(board.getBno());
			// tbl_attach테이블에 파일정보를 insert해라.
			attachMapper.insert(attach);
		});
		
	}
	@Override
	public BoardVO get(long bno) {
		log.info("get....."+bno);
		return mapper.read(bno);
	}
	@Override
	public boolean modify(BoardVO board) {
		log.info("modify....."+board);
		return mapper.update(board)==1;
	}
	@Override
	public boolean remove(long bno) {
		log.info("remove....."+bno);
		return mapper.delete(bno)==1;
	}
	/*
	@Override
	public List<BoardVO> getList() {
		log.info("getList........");
		return mapper.getList();
	}*/
	@Override
	public List<BoardVO> getList(Criteria cri) {
		log.info("getList........");
		return mapper.getListWithPaging(cri);
	}
	@Override
	public int getTotalCount(Criteria cri) {
		return mapper.getTotalCount(cri);
	}
	@Override
	public List<BoardAttachVO> getAttachList(int bno) {
		log.info("getAttachList........"+bno);
		return attachMapper.findByBno(bno);
	}
}

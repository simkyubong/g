package org.zerock.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {
	@Setter(onMethod_=@Autowired)
	private ReplyMapper mapper;
	/*
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	@Test
	public void testCreate() {
		ReplyVO vo = new ReplyVO();
		
		vo.setBno(7);
		vo.setReply("댓글 테스트");
		vo.setReplyer("replyer");
		
		mapper.insert(vo);
	}
	@Test
	public void testRead() {
		int targetRno = 5;
		ReplyVO vo = mapper.read(targetRno);
		
		log.info(vo);		
	}
	*/
	/*
	@Test
	public void testDelete() {
		int targetRno = 4;
		mapper.delete(targetRno);
	}
	
	@Test
	public void testUpdate() {
		
		ReplyVO vo = new ReplyVO();
		
		// ReplyVO Model에 rno값 저장
		vo.setRno(2);
		// ReplyVO Model에 reply값 저장
		vo.setReply("Update Reply");
		
		int count=mapper.update(vo);

		log.info("UPDATE COUNT"+count);
		
	}
	*/
	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies=mapper.getListWithPaging(cri, 6);
		replies.forEach(reply->log.info(reply));
	}
	
	
	
	
	
	
	
}









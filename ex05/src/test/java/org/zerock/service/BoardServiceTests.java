package org.zerock.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	@Setter(onMethod_=@Autowired)
	private BoardService service;
	
	@Test
	public void testExist() {
		log.info(service);
		assertNotNull(service);
	}
	@Test
	public void tstRegister() {
		BoardVO board=new BoardVO();
		board.setTitle("���� �ۼ��ϴ� ��");
		board.setContent("���� �ۼ��ϴ� ����");
		board.setWriter("newbie");
		
		service.register(board);
		
		log.info("������ �Խù��� ��ȣ : "+board.getBno());
	}
	@Test
	public void testGetList() {
		Criteria cri=new Criteria();
		service.getList(cri).forEach(board->log.info(board));
	}
	@Test
	public void testGet() {
		log.info(service.get(2L));
	}
	@Test
	public void testUpdate() {
		BoardVO board=new BoardVO();
		board.setTitle("���� �����մϴ�.");
		board.setContent("���� �����մϴ�.");
		board.setWriter("���ڹ�");
		board.setBno(2);
		log.info("MODIFY RESULT : "+service.modify(board));
	}
	@Test
	public void testDelete() {
		log.info("REMOVE RESULT : "+service.remove(2L));
	}
}

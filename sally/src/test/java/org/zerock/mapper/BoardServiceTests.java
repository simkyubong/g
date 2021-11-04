package org.zerock.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.BoardVO;
import org.zerock.service.BoardService;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardServiceTests {
	
	@Autowired
    private BoardService service;
    
//    @Test
//    public void testEnroll() {
//        
//        BoardVO vo = new BoardVO();
//        
//        vo.setTitle("service test");
//        vo.setContent("service test");
//        vo.setWriter("service test");
//        
//        service.enroll(vo);
//        
//    }
	
	/* 게시판 목록 테스트 */
    /*@Test
    public void testGetList() {
        
        service.getList().forEach(board -> log.info("" + board));        
        
    }*/
	
	/*게시판 조회*/
    @Test
    public void testGETPage() {
        
        int bno = 8;
        
        log.info("" + service.getPage(bno));
        
    }
}

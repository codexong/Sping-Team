package com.example.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.BoardVO;
import com.example.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.example.config.RootConfig.class})
@Log4j
public class BoardServiceTest {

	@Setter(onMethod_ = {@Autowired} )
	private BoardService service;

	@Test
	public void textExist() {

		log.info(service);
		assertNotNull(service);
	}

	@Test
	public void testRegister() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 글 내용");
		board.setWriter("newbie");

		service.register(board);
		log.info("생성된 게시물의 번호" + board.getBno());
	}

	@Test
	public void testGetList() {

		/* service.getList().forEach(board -> log.info(board)); */
			service.getList(new Criteria(4, 5)).forEach(board -> log.info(board));
		}

	@Test
	public void testGet() {
		log.info(service.get(1L));
	}

	@Test
	public void testDelete() {
		log.info("삭제 결과 : " + service.remove(24L));
	}

	@Test
	public void testUpdate() {
		BoardVO board = service.get(10L);
		if(board == null) { return;}

		board.setTitle("10 번 제목 수정 또 ");
		board.setContent("10번 내용 수정");
		log.info( "MODIFIY RESULT : " + service.modify(board));
	}

}

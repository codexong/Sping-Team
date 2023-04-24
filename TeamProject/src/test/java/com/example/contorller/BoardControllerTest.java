package com.example.contorller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(classes = {com.example.config.RootConfig.class,
								 com.example.config.ServletConfig.class})
@Log4j

public class BoardControllerTest {

	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}

	/* @Test */ //입력 테스트
	public void testRegister() throws Exception{

		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/board/register")
											.param("title", "테스트 새 글 제목")
											.param("content", "테스트 새 글 내용")
											.param("writer", "user00")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
		log.info(resultPage);
	}

	@Test //조회 테스트
	public void testGet() throws Exception{

		log.info(mockMvc.perform(MockMvcRequestBuilders
										.get("/board/get")
										.param("bno", "18"))

						.andReturn()
						.getModelAndView()
						.getModelMap()
				);
	}

	/* @Test */ //수정테스트 update
	public void testModify() throws Exception{

			String resultPage = mockMvc.perform(MockMvcRequestBuilders
												.post("/board/modify")
												.param("bno", "29")
												.param("title", "수정된 글 제목")
												.param("content", "수정된 글 내용")
												.param("writer", "user00")
												)
										.andReturn()
										.getModelAndView()
										.getViewName();
					log.info(resultPage);
	}

	/* @Test *///삭제 테스트
	public void testRemove() throws Exception{

			String resultPage = mockMvc.perform(MockMvcRequestBuilders
												.post("/board/remove")
												.param("bno", "29")
												)
										.andReturn()
										.getModelAndView()
										.getViewName();
					log.info(resultPage);
	}

	@Test
	public void testListPaging() throws Exception{

		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/board/list")
				.param("pageNum", "4")
				.param("amount", "5"))
				.andReturn().getModelAndView().getModelMap());
	}
}

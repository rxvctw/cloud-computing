package com.iwp.springdemo;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.junit.Assert.assertEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SpringDemoApplicationTests {

	@Autowired
	WebApplicationContext webApplicationContext;

	private MockMvc mockMvc;

	@Before
    public void setUp() {
	    mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
    }

	@Test
	public void contextLoads() throws Exception {
		MvcResult result = mockMvc.perform(get("/welcome/archana"))
				.andExpect(status().is(200))
				.andExpect(content().contentType("text/plain;charset=UTF-8"))
                .andReturn();

        String content = result.getResponse().getContentAsString();

		assertEquals("Hello archana, Welcome to Infra Bootcamp!", content);
	}
}

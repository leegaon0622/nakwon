package com.nakwon.cs;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.nakwon.domain.IntroduceVO;
import com.nakwon.persistence.IntroduceDAO;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class IntroduceDAOTest {
	@Inject
	private IntroduceDAO dao;
	
	@Test
	public void testInsertIntroduce() throws Exception {
		IntroduceVO vo = new IntroduceVO();
		vo.setIntroCode(01);
		vo.setIntroTitle("낙원 소개");
		vo.setIntroContent("낙원은 아무런 걱정이나 부족함이 없이 살 수 있는 즐거운 곳입니다.");
		/*vo.setIntroImg();	*/	
		dao.insert(vo);
	}
}
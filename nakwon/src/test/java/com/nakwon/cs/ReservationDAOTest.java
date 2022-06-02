package com.nakwon.cs;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.nakwon.domain.ReservationHoldVO;
import com.nakwon.persistence.ReservationHoldDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(
		locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})

public class ReservationDAOTest {
	@Inject
	private ReservationHoldDAO dao;
	
	@Test
	public void insertReservation() throws Exception {
		ReservationHoldVO vo = new ReservationHoldVO();
		vo.setPhone("01012345678");
		vo.setName("Á¤½Â°æ");
		vo.setEmail("skyeong1003@naver.com");
		vo.setPnum(1);
		vo.setMessage("¾È³ç¾È³ç¾È³ç");
		
		dao.insertReservationHold(vo);
	}
}
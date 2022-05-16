package com.nakwon.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.nakwon.domain.ReservationVO;
import com.nakwon.persistence.ReservationHoldDAO;

@Service
public class ReservationHoldServiceImpl implements ReservationHoldService {
	@Inject
	ReservationHoldDAO dao;
	
	@Override
	public void insertReservation(ReservationVO vo) throws Exception{
		dao.insertReservation(vo);
	}

}
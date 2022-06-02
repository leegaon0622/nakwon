package com.nakwon.persistence;

import java.util.List;
import java.util.Map;

import com.nakwon.domain.ReservationHoldVO;

public interface ReservationHoldDAO {
	public void insertReservationHold(ReservationHoldVO vo)  throws Exception; //¿¹¾à µî·Ï
	
	public List<ReservationHoldVO> rsrvHoldListAll() throws Exception; //예약 리스트 가져오기

	public int listCountPaging(com.nakwon.domain.Criteria cri) throws Exception;

	public List<ReservationHoldVO> listCriteria(com.nakwon.domain.Criteria cri) throws Exception;

	public ReservationHoldVO userReservationCheck(Map<String,String> Check) throws Exception;
}
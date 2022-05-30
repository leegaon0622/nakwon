package com.nakwon.persistence;

import java.util.List;

import com.nakwon.domain.ReservationVO;

public interface ReservationHoldDAO {
	public void insertReservationHold(ReservationVO vo)  throws Exception; //¿¹¾à µî·Ï
	
	public List<ReservationVO> rsrvHoldListAll() throws Exception; //예약 리스트 가져오기

	public int listCountPaging(com.nakwon.domain.Criteria cri) throws Exception;

	public List<ReservationVO> listCriteria(com.nakwon.domain.Criteria cri) throws Exception;

}
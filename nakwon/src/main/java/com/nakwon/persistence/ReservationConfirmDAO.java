package com.nakwon.persistence;

import java.util.Map;
import com.nakwon.domain.ReservationConfirmVO;

public interface ReservationConfirmDAO {

	public ReservationConfirmVO userReservationCheck(Map<String,String> Check) throws Exception;
}
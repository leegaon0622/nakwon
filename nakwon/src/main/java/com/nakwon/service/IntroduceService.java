package com.nakwon.service;

import java.util.List;

import com.nakwon.domain.Criteria;
import com.nakwon.domain.IntroduceVO;

public interface IntroduceService {
	public void introduceinsert(IntroduceVO vo) throws Exception;
	
	public void remove(Integer introCode) throws Exception;
	  
	public List<IntroduceVO> introduceListAll() throws Exception;
	  
	/*public List<IntroduceVO> listCriteria(Criteria criteria) throws Exception;
	  
	public int listCountCriteria(Criteria cri)throws Exception;*/
}
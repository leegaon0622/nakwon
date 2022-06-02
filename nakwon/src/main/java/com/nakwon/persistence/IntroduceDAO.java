package com.nakwon.persistence;

import java.util.List;

import com.nakwon.domain.Criteria;
import com.nakwon.domain.IntroduceVO;

public interface IntroduceDAO {
	public void introduceinsert(IntroduceVO vo) throws Exception;
	
	public void introducedelete(Integer vo) throws Exception;
	 
	public List<IntroduceVO> introduceListAll() throws Exception;
	  
	/*public List<IntroduceVO> listCriteria(Criteria criteria) throws Exception;
	  
	public int countPaging(Criteria cri)throws Exception;*/
}
package com.nakwon.persistence;

import java.util.List;

import com.nakwon.domain.CriteriaIntro;
import com.nakwon.domain.IntroduceVO;

public interface IntroduceDAO {
	public void introduceinsert(IntroduceVO vo) throws Exception;
	
	public void introducedelete(Integer vo) throws Exception;
	 
	public List<IntroduceVO> introduceListAll() throws Exception;
	  
	public List<IntroduceVO> listCriteria(CriteriaIntro criteriaIntro) throws Exception;
	  
	public int listcountPaging(CriteriaIntro criIntro)throws Exception;
}
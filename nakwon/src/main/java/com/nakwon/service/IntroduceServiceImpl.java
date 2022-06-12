package com.nakwon.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;

import com.nakwon.domain.CriteriaIntro;
import com.nakwon.domain.IntroduceVO;
import com.nakwon.persistence.IntroduceDAO;

@Service
public class IntroduceServiceImpl implements IntroduceService{
	@Inject
	IntroduceDAO dao;
	
	@Override
	public void introduceinsert(IntroduceVO vo) throws Exception{
		dao.introduceinsert(vo);
	}
	
	@Override
	public void remove(Integer introCode) throws Exception {
	    dao.introducedelete(introCode);
	 }
	 
	@Override
	public List<IntroduceVO> introduceListAll()throws Exception {
		return dao.introduceListAll();
	}
	
	@Override
	public List<IntroduceVO> listCriteria(CriteriaIntro criIntro) throws Exception {
	    return dao.listCriteria(criIntro);
	}
	  
	@Override
	public int listCountCriteria(CriteriaIntro criIntro) throws Exception {
	    return dao.listcountPaging(criIntro);
    } 
}
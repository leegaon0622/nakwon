package com.nakwon.service;

import java.util.List;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.nakwon.domain.IntroduceVO;
import com.nakwon.persistence.IntroduceDAO;

@Service
public class IntroduceServiceImpl implements IntroduceService{
	@Inject
	IntroduceDAO dao;
	
	@Override
	public void insert(IntroduceVO vo) throws Exception{
		dao.insert(vo);
	}
	
	@Override
	public List<IntroduceVO> introduceListAll()throws Exception {
		return dao.introduceListAll();
	}
}
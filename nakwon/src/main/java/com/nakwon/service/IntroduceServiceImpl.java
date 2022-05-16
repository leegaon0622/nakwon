package com.nakwon.service;

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
}
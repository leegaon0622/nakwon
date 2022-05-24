package com.nakwon.service;

import java.util.List;

import com.nakwon.domain.IntroduceVO;

public interface IntroduceService {
	public void insert(IntroduceVO vo) throws Exception;
	
	public List<IntroduceVO> introduceListAll() throws Exception;
}
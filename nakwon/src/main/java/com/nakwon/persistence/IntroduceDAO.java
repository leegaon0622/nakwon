package com.nakwon.persistence;

import com.nakwon.domain.IntroduceVO;

public interface IntroduceDAO {
	public void insert(IntroduceVO vo) throws Exception;
}
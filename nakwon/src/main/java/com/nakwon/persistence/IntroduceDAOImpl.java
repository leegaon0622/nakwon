package com.nakwon.persistence;

import javax.inject.Inject;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.nakwon.domain.CriteriaIntro;
import com.nakwon.domain.IntroduceVO;

@Repository
public class IntroduceDAOImpl implements IntroduceDAO{
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.nakwon.mapper.IntroduceMapper";

	@Override
	public void introduceinsert(IntroduceVO vo) throws Exception {
		sqlSession.insert(namespace+".introduceinsert",vo);
	}
	
	@Override
	  public void introducedelete(Integer introCode) throws Exception {
		sqlSession.delete(namespace + ".introducedelete", introCode);
	  }
	
	@Override
	public List<IntroduceVO> introduceListAll()throws Exception {
		return sqlSession.selectList(namespace+".introduceListAll");
	}	
	  
    @Override
	public List<IntroduceVO> listCriteria(CriteriaIntro criIntro) throws Exception {
	    return sqlSession.selectList(namespace + ".CriteriaIntro", criIntro);
	}
	  
	@Override
	public int listcountPaging(CriteriaIntro criIntro) throws Exception {
	  return sqlSession.selectOne(namespace + ".listcountPaging", criIntro);
	}
} 
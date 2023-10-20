package com.green.cs.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.cs.dao.CsDao;
import com.green.cs.vo.CsVo;

@Repository("csDao")
public class CsDaoImpl implements CsDao {

	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void userCsInsert(CsVo vo) {
		
		sqlSession.insert("Cs.UserCsInsert", vo);
		
	}
}

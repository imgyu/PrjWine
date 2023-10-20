package com.green.cs.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.cs.dao.CsDao;

@Repository("csDao")
public class CsDaoImpl implements CsDao {

	
	@Autowired
	private SqlSession sqlSession;
}

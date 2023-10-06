package com.green.store.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.dao.StoreDao;
import com.green.store.vo.StoreVo;

@Repository("storedao")
public class StoreDaoImpl implements StoreDao{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertStore(StoreVo vo) {
		
		System.out.println(vo);
		sqlSession.insert("Store.StoreInsert", vo );
		
	}

	@Override
	public StoreVo storelogin(StoreVo vo) {
		StoreVo loginVo = sqlSession.selectOne("Store.Storelogin", vo );
		return loginVo;
	}
}

package com.green.store.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.dao.StoreDao;
import com.green.store.vo.RegVo;
@Repository("storeDao")
public class StoreDaoImpl implements StoreDao {
	@Autowired
	private SqlSession sqlSession;
	@Override
	public List<RegVo> getSearchList(RegVo vo) {
		List<RegVo> searchList = sqlSession.selectList("Store.SearchList", vo);
		return searchList;
	}
	@Override
	public void insertSearch(RegVo vo) {
		sqlSession.insert("Store.InsertSearch",vo);
	}


}

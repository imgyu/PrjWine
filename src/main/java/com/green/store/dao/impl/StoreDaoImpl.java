package com.green.store.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.dao.StoreDao;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;
	
import com.green.store.vo.RegVo;
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
	@Override
	public List<RegVo> getSearchList(RegVo vo) {
		List<RegVo> searchList = sqlSession.selectList("Store.SearchList", vo);
		return searchList;
	}
	@Override
	public void insertSearch(RegVo vo) {
		sqlSession.insert("Store.InsertSearch",vo);
	}

	@Override
	public List<HavingWineVo> getWineList(StoreVo vo) {
		
		List<HavingWineVo> wineList  =  sqlSession.selectList("Store.WineList",vo);
		
		return wineList;
	}

	@Override
	public void updatrWine(WineListVo vo) {
		
		sqlSession.update("Store.UpdateWine", vo);
		
	}
}

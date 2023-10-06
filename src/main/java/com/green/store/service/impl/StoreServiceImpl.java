package com.green.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.dao.StoreDao;
import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;
import com.green.store.vo.WineVo;
import com.green.store.vo.RegVo;


import com.green.store.vo.StoreVo;

@Service("storeService")
public class StoreServiceImpl implements StoreService {

	@Autowired
	private  StoreDao storeDao  ;

	@Override
	public void insertStore(StoreVo vo) {
		
		storeDao.insertStore( vo );
		
	}

	@Override
	public StoreVo storelogin(StoreVo vo) {
		StoreVo loginVo = storeDao.storelogin( vo );
		return loginVo;
	}

	@Override
	public List<RegVo> getSearchList(RegVo vo) {
		List<RegVo> searchList = storeDao.getSearchList(vo);
		return searchList;
	}

	@Override
	public void insertSearch(RegVo vo) {
		storeDao.insertSearch(vo);		
	}

	@Override
	public List<HavingWineVo> getWineList(StoreVo vo) {
		
		List<HavingWineVo> wineList  =  storeDao.getWineList(vo);
		
		return wineList;
	}

	@Override
	public void updateWine(WineListVo vo) {
		storeDao.updatrWine(vo);
	}
}

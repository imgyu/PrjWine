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

@Service("storeService")
public class StoreServiceImpl implements StoreService {
	
	@Autowired
	private StoreDao storeDao;

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

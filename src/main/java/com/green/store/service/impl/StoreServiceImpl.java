package com.green.store.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.dao.StoreDao;
import com.green.store.service.StoreService;
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
	


	
	
	

}

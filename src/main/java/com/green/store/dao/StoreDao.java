package com.green.store.dao;

import com.green.store.vo.StoreVo;

public interface StoreDao {

	void insertStore(StoreVo vo);

	StoreVo storelogin(StoreVo vo);
	
	
}

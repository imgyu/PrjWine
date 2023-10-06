package com.green.store.service;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;
import com.green.store.vo.RegVo;

public interface StoreService {

	List<RegVo> getSearchList(RegVo vo);

	void insertSearch(RegVo vo);

	List<HavingWineVo> getWineList(StoreVo vo);

	void updateWine(WineListVo vo);

	void insertStore(StoreVo vo);

	StoreVo storelogin(StoreVo vo);

	
}

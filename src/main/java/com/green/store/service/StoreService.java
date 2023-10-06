package com.green.store.service;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;

public interface StoreService {

	List<HavingWineVo> getWineList(StoreVo vo);

	void updateWine(WineListVo vo);



	






}

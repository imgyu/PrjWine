package com.green.store.dao;


import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;

public interface StoreDao {

	List<HavingWineVo> getWineList(StoreVo vo);

	void updatrWine(WineListVo vo);






}

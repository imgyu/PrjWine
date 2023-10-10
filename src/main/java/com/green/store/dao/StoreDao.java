package com.green.store.dao;


import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;
import com.green.user.vo.UserVo;

public interface StoreDao {
	// (영태)
	void insertSearch(RegVo vo);
	// (영태)
	List<RegVo> getSearchList(RegVo vo);
	// (병규)
	void insertStore(StoreVo vo);
	// (병규)
	StoreVo storelogin(StoreVo vo);
	// (임규)
	List<HavingWineVo> getWineList(StoreVo vo);
	// (임규)
	void updateWineList(HavingWineVo havingVo);
	// (민규)
	List<StoreVo> selectstrli( UserVo vo );
	// (민규)
	StoreVo selectstr(StoreVo vo);



}

package com.green.store.dao;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.user.vo.UserVo;

public interface StoreDao {
	// (영태)
	void insertwine(int selectedOption, int w_amount, int w_price, int s_no, int w_no);
	
	// (영태)
	List<RegVo> getSearchList(String searchKeyword, String searchOption);
	
	// (병규)
	void insertStore(StoreVo vo);
	// (병규)
	StoreVo storelogin(StoreVo vo);
	// (임규)
	List<HavingWineVo> getWineList(HavingWineVo vo);
	// (임규)
	void updateWineList(HavingWineVo havingVo);
	
	void deleteWineList(HavingWineVo havingVo);
	
	List<HavingWineVo> selectList(HavingWineVo vo);	
		
	// (민규)
	List<StoreVo> selectstrli( UserVo vo );
	// (민규)
	StoreVo selectstr(StoreVo vo);

	List<RegVo> getStoreListSearch(int s_no, String searchKeyword, String searchOption);







}

package com.green.wine.dao;

import java.util.List;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;

public interface WineDao {
	
	List<WineVo> getWineInfo(WineVo vo);

	List<HavingWineVo> getStoreList(HavingWineVo store);
		
	List<RegVo> getNameSearch(String name_Search);

	List<RegVo> getAllClick(String all_click);

	List<RegVo> getRedClick(String red_click);

	List<RegVo> getWhiteClick(String white_click);

	List<RegVo> getSparkClick(String sparkling_click);

	List<RegVo> getRoseClick(String rose_click);

	List<RegVo> getOtherClick(String other_click);

}

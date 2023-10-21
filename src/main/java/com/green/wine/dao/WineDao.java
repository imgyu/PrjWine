package com.green.wine.dao;

import java.util.List;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;

public interface WineDao {
	
	List<WineVo> getWineInfo(WineVo vo);

	List<HavingWineVo> getStoreList(HavingWineVo store);
		
	List<RegVo> getNameSearch(String name_Search, PdsPagingVo pds);

	List<RegVo> getAllClick(String all_click, PdsPagingVo pds);

	List<RegVo> getRedClick(String red_click, PdsPagingVo pds);

	List<RegVo> getWhiteClick(String white_click, PdsPagingVo pds);

	List<RegVo> getSparkClick(String sparkling_click, PdsPagingVo pds);

	List<RegVo> getRoseClick(String rose_click, PdsPagingVo pds);

	List<RegVo> getOtherClick(String other_click, PdsPagingVo pds);

	int countWine();

}

package com.green.wine.service;

import java.util.List;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;

public interface WineService {
	
	List<WineVo> getWineInfo(WineVo vo);
	
	List<HavingWineVo> getStoreList(HavingWineVo store);
	
	List<RegVo> nameSearch(String name_Search, PdsPagingVo pds);
	
	List<RegVo> allClick(String all_click, PdsPagingVo pds);

	List<RegVo> redClick(String red_click, PdsPagingVo pds);
	
    List<RegVo> whiteClick(String white_click, PdsPagingVo pds);

    List<RegVo> sparkClick(String sparkling_click, PdsPagingVo pds);

    List<RegVo> roseClick(String rose_click, PdsPagingVo pds);

    List<RegVo> otherClick(String other_click, PdsPagingVo pds);

	int countWine();


}

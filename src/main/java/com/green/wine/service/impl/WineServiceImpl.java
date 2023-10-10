package com.green.wine.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;
import com.green.wine.dao.WineDao;
import com.green.wine.service.WineService;
@Service("wineService")
public class WineServiceImpl implements WineService {
	
	@Autowired
	private WineDao wineDao;
	
	@Override
	public List<WineVo> getWineInfo(WineVo vo) {
		
		List<WineVo> wineInfo  =  wineDao.getWineInfo(vo);
		
		return wineInfo;
	}
	
	@Override
	public List<HavingWineVo> getStoreList(HavingWineVo store) {
		
		List<HavingWineVo> storeList  =  wineDao.getStoreList(store);
		
		return storeList;
	}
	
	@Override
	public List<RegVo> nameSearch(String name_Search) {
		List<RegVo> nameSearch = wineDao.getNameSearch(name_Search);
		return nameSearch;
	}

	@Override
	public List<RegVo> allClick(String all_click) {
		List<RegVo> allClick = wineDao.getAllClick(all_click);
 		return allClick;
	}

	@Override
	public List<RegVo> redClick(String red_click) {
		List<RegVo> redClick = wineDao.getRedClick(red_click);
		return redClick;
	}

	@Override
	public List<RegVo> whiteClick(String white_click) {
		List<RegVo> whiteClick = wineDao.getWhiteClick(white_click);
		return whiteClick;
	}

	@Override
	public List<RegVo> sparkClick(String sparkling_click) {
		List<RegVo> sparkClick = wineDao.getSparkClick(sparkling_click);
		return sparkClick;
	}

	@Override
	public List<RegVo> roseClick(String rose_click) {
		List<RegVo> roseClick = wineDao.getRoseClick(rose_click);
		return roseClick;
	}

	@Override
	public List<RegVo> otherClick(String other_click) {
		List<RegVo> otherClick = wineDao.getOtherClick(other_click);
		return otherClick;
	}

}

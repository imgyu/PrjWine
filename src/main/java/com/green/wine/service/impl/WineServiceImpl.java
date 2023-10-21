package com.green.wine.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.pds.vo.PdsPagingVo;
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
	public List<RegVo> nameSearch(String name_Search, PdsPagingVo pds) {
		List<RegVo> nameSearch = wineDao.getNameSearch(name_Search, pds);
		return nameSearch;
	}

	@Override
	public List<RegVo> allClick(String all_click, PdsPagingVo pds) {
		List<RegVo> allClick = wineDao.getAllClick(all_click, pds);
 		return allClick;
	}

	@Override
	public List<RegVo> redClick(String red_click, PdsPagingVo pds) {
		List<RegVo> redClick = wineDao.getRedClick(red_click, pds);
		return redClick;
	}

	@Override
	public List<RegVo> whiteClick(String white_click, PdsPagingVo pds) {
		List<RegVo> whiteClick = wineDao.getWhiteClick(white_click, pds);
		return whiteClick;
	}

	@Override
	public List<RegVo> sparkClick(String sparkling_click, PdsPagingVo pds) {
		List<RegVo> sparkClick = wineDao.getSparkClick(sparkling_click, pds);
		return sparkClick;
	}

	@Override
	public List<RegVo> roseClick(String rose_click, PdsPagingVo pds) {
		List<RegVo> roseClick = wineDao.getRoseClick(rose_click, pds);
		return roseClick;
	}

	@Override
	public List<RegVo> otherClick(String other_click, PdsPagingVo pds) {
		List<RegVo> otherClick = wineDao.getOtherClick(other_click, pds);
		return otherClick;
	}

	@Override
	public int countWineAll() {
		return wineDao.countWineAll();
	}

	@Override
	public int countWineRed() {
		return wineDao.countWineRed();
	}
	@Override
	public int countWineWhite() {
		return wineDao.countWineWhite();
	}
	@Override
	public int countWineSpark() {
		return wineDao.countWineSpark();
	}
	@Override
	public int countWineRose() {
		return wineDao.countWineRose();
	}
	@Override
	public int countWineOther() {
		return wineDao.countWineOther();
	}

	@Override
	public int countWineSearch(String name_Search) {
		return wineDao.countWineSearch(name_Search);
	}

}

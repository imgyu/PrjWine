package com.green.wine.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;
import com.green.wine.dao.WineDao;

@Repository("wineDao")
public class WineDaoImpl implements WineDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<WineVo> getWineInfo(WineVo vo) {
		
		List<WineVo> wineInfo  =  sqlSession.selectList("Wine.GetWineInfo", vo);
		
		return wineInfo;
	}
	
	@Override
	public List<HavingWineVo> getStoreList(HavingWineVo store) {
		
		List<HavingWineVo> storeList  =  sqlSession.selectList("Wine.GetStoreList", store);
		
		return storeList;
	}
	
	@Override
	public List<RegVo> getNameSearch(String name_Search) {
		List<RegVo> nameSearch = sqlSession.selectList("Wine.NameSearch", name_Search);
		return nameSearch;
	}

	@Override
	public List<RegVo> getAllClick(String all_click) {
		List<RegVo> allClick = sqlSession.selectList("Wine.AllClick", all_click);
		return allClick;
	}

	@Override
	public List<RegVo> getRedClick(String red_click) {
		List<RegVo> redClick = sqlSession.selectList("Wine.RedClick", red_click);
		return redClick;
	}

	@Override
	public List<RegVo> getWhiteClick(String white_click) {
		List<RegVo> whiteClick = sqlSession.selectList("Wine.WhiteClick", white_click);
		return whiteClick;
	}

	@Override
	public List<RegVo> getSparkClick(String sparkling_click) {
		List<RegVo> sparkClick = sqlSession.selectList("Wine.SparkClick", sparkling_click);
		return sparkClick;
	}

	@Override
	public List<RegVo> getRoseClick(String rose_click) {
		List<RegVo> roseClick = sqlSession.selectList("Wine.RoseClick", rose_click);
		return roseClick;
	}

	@Override
	public List<RegVo> getOtherClick(String other_click) {
		List<RegVo> otherClick = sqlSession.selectList("Wine.OtherClick", other_click);
		return otherClick;
	}

}

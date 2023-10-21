package com.green.wine.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.pds.vo.PdsPagingVo;
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
	public List<RegVo> getNameSearch(String name_Search, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("name_Search", name_Search);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> nameSearch = sqlSession.selectList("Wine.NameSearch", map);
		return nameSearch;
	}

	@Override
	public List<RegVo> getAllClick(String all_click, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("all_click", all_click);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> allClick = sqlSession.selectList("Wine.AllClick", map);
		return allClick;
	}

	@Override
	public List<RegVo> getRedClick(String red_click, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("red_click", red_click);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> redClick = sqlSession.selectList("Wine.RedClick", map);
		return redClick;
	}

	@Override
	public List<RegVo> getWhiteClick(String white_click, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("white_click", white_click);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> whiteClick = sqlSession.selectList("Wine.WhiteClick", map);
		return whiteClick;
	}

	@Override
	public List<RegVo> getSparkClick(String sparkling_click, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("sparkling_click", sparkling_click);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> sparkClick = sqlSession.selectList("Wine.SparkClick", map);
		return sparkClick;
	}

	@Override
	public List<RegVo> getRoseClick(String rose_click, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("rose_click", rose_click);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> roseClick = sqlSession.selectList("Wine.RoseClick", map);
		return roseClick;
	}

	@Override
	public List<RegVo> getOtherClick(String other_click, PdsPagingVo pds) {
		Map<String, Object> map = new HashMap<>();
		map.put("other_click", other_click);
		map.put("pds", pds);
		map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
		List<RegVo> otherClick = sqlSession.selectList("Wine.OtherClick", map);
		return otherClick;
	}

	@Override
	public int countWineAll() {
		return sqlSession.selectOne("Wine.CountWineAll");
	}
	@Override
	public int countWineRed() {
		return sqlSession.selectOne("Wine.CountWineRed");
	}
	@Override
	public int countWineWhite() {
		return sqlSession.selectOne("Wine.CountWineWhite");
	}
	@Override
	public int countWineSpark() {
		return sqlSession.selectOne("Wine.CountWineSpark");
	}
	@Override
	public int countWineRose() {
		return sqlSession.selectOne("Wine.CountWineRose");
	}
	@Override
	public int countWineOther() {
		return sqlSession.selectOne("Wine.CountWineOther");
	}

}

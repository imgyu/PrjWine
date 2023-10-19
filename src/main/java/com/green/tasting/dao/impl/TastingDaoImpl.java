package com.green.tasting.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.RegVo;
import com.green.tasting.dao.TastingDao;
import com.green.tasting.vo.TastingVo;
@Repository("tastingDao")
public class TastingDaoImpl implements TastingDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TastingVo> getTastingList(TastingVo vo) {
		List<TastingVo> tastList = sqlSession.selectList("Taste.TastList", vo);
		return tastList;
	}

	@Override
	public List<RegVo> getSearchList(HashMap<String, Object> map) {
		String searchKeyword = String.valueOf(map.get("searchKeyword"));
		String searchOption = String.valueOf(map.get("searchOption"));
		String kindOption = String.valueOf(map.get("kindOption"));
		
		List<RegVo> searchList = new ArrayList<>();;
		
		if ("w_kind".equals(kindOption)) {
			if ("w_name".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList1", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList2", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList3", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		if ("1".equals(kindOption)) {
			if ("w_name".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList4", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList5", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList6", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		if ("2".equals(kindOption)) {
			if ("w_name".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList7", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList8", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList9", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		if ("3".equals(kindOption)) {
			if ("w_name".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList10", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList11", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList12", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		if ("4".equals(kindOption)) {
			if ("w_name".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList13", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList14", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList15", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		if ("5".equals(kindOption)) {
			if ("w_name".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList16", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList17", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList18", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		if ("6".equals(kindOption)) {
			if ("w_name".equals(searchOption	)) {
				searchList = sqlSession.selectList("Store.SearchList19", map);
			} else if ("w_location".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList20", map);
			} else if ("w_vintage".equals(searchOption)) {
				searchList = sqlSession.selectList("Store.SearchList21", map);
			} else {
				searchList = sqlSession.selectList("Store.SearchList22", map);
			}
		} 
		return searchList;
	}

	@Override
	public void insertTaste(TastingVo vo) {
		sqlSession.insert("Taste.InsertTaste", vo);
	}

	@Override
	public List<TastingVo> getTastingBoard(TastingVo vo) {
		List<TastingVo> tastingBoard = sqlSession.selectList("Taste.TastingBoard", vo);
		return tastingBoard;
	}

	@Override
	public void deleteTaste(TastingVo vo) {
		sqlSession.delete("Taste.DeleteTaste",vo);
	}

    @Override
	public List<TastingVo> getUserTasting(TastingVo vo) {
		List<TastingVo> usertasting = sqlSession.selectList("Taste.Usertasting", vo);
		return usertasting;
	}

	@Override
	public void deleteTasting(TastingVo vo) {
		sqlSession.delete("Taste.DeleteTasting", vo);
		
	}

	@Override
	public void tastingRequest(TastingVo vo) {
		sqlSession.insert("Taste.TastingRequest", vo);
		
	}

	@Override
	public int requestCount(int t_idx) {
		int count  =  sqlSession.selectOne("Taste.RequestCount", t_idx);
		return count;
	}

	@Override
	public List<TastingVo> requestList(TastingVo vo) {
		
		List<TastingVo> requestList  =  sqlSession.selectList("Taste.RequestList", vo);
		
		return requestList;
	}

	@Override
	public int countTasting() {
		
		return sqlSession.selectOne("Taste.CountTasting");
	}

	@Override
	public List<TastingVo> getTastList2(PdsPagingVo pds) {
		
		List<TastingVo> tastList2  =  sqlSession.selectList("Taste.TastList2", pds);
		
		return tastList2;
	}




}

package com.green.tasting.dao;

import java.util.HashMap;
import java.util.List;

import com.green.store.vo.RegVo;
import com.green.tasting.vo.TastingVo;

public interface TastingDao {

	List<TastingVo> getTastingList(TastingVo vo);

	List<RegVo> getSearchList(HashMap<String, Object> map);

	void insertTaste(TastingVo vo);

	List<TastingVo> getTastingBoard(TastingVo vo);

	void deleteTaste(TastingVo vo);
	
	List<TastingVo> getUserTasting(TastingVo vo);

	void deleteTasting(TastingVo vo);

	void tastingRequest(TastingVo vo);

	int requestCount(int t_idx);

	List<TastingVo> requestList(TastingVo vo);





}

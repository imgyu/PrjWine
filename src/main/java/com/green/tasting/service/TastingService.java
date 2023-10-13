package com.green.tasting.service;

import java.util.HashMap;
import java.util.List;

import com.green.store.vo.RegVo;
import com.green.tasting.vo.TastingVo;

public interface TastingService {

	List<TastingVo> getTastList(TastingVo vo);

	List<RegVo> searchList(HashMap<String, Object> map);

	void insertTaste(TastingVo vo);

	List<TastingVo> tastingBoard(TastingVo vo);

	void deleteTaste(TastingVo vo);
	
	List<TastingVo> getUserTasting(TastingVo vo);

	void deleteTasting(TastingVo vo);

}

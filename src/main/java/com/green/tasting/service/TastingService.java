package com.green.tasting.service;

import java.util.HashMap;
import java.util.List;

import com.green.store.vo.RegVo;
import com.green.tasting.vo.TastingVo;

public interface TastingService {

	List<TastingVo> getTastList(TastingVo vo);

	List<RegVo> searchList(HashMap<String, Object> map);

	void insertTaste(TastingVo vo);

}

package com.green.tasting.dao;

import java.util.List;

import com.green.tasting.vo.TastingVo;

public interface TastingDao {

	List<TastingVo> getTastingList(TastingVo vo);


}

package com.green.store.dao;

import java.util.List;

import com.green.store.vo.RegVo;

public interface StoreDao {

	List<RegVo> getSearchList(RegVo vo);

	void insertSearch(RegVo vo);


}

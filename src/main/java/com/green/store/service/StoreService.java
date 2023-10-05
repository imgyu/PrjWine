package com.green.store.service;

import java.util.List;

import com.green.store.vo.RegVo;

public interface StoreService {

	List<RegVo> getSearchList(RegVo vo);

	void insertSearch(RegVo vo);


}

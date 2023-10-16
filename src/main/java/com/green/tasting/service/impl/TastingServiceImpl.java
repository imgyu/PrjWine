package com.green.tasting.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.store.vo.RegVo;
import com.green.tasting.dao.TastingDao;
import com.green.tasting.service.TastingService;
import com.green.tasting.vo.TastingVo;

@Service("tastingService")
public class TastingServiceImpl implements TastingService {
	
	@Autowired
	private TastingDao tastingDao;
	
	@Override
	public List<TastingVo> getTastList(TastingVo vo) {
		List<TastingVo> tastList = tastingDao.getTastingList(vo);
		return tastList;
	}

	@Override
	public List<RegVo> searchList(HashMap<String, Object> map) {
		List<RegVo> searchList = tastingDao.getSearchList(map);
		return searchList;
	}

	@Override
	public void insertTaste(TastingVo vo) {
		tastingDao.insertTaste(vo);
	}

	@Override
	public List<TastingVo> tastingBoard(TastingVo vo) {
		List<TastingVo> tastingBoard = tastingDao.getTastingBoard(vo);
		return tastingBoard;
	}

	@Override
	public void deleteTaste(TastingVo vo) {
		tastingDao.deleteTaste(vo);
	}
	
	@Override	
	public List<TastingVo> getUserTasting(TastingVo vo) {
		List<TastingVo> usertasting = tastingDao.getUserTasting(vo);
		return usertasting;
	}

	@Override
	public void deleteTasting(TastingVo vo) {
		 tastingDao.deleteTasting(vo);
	}

	@Override
	public void tastingRequest(TastingVo vo) {
		tastingDao.tastingRequest(vo);
		
	}

	@Override
	public int requestCount(int t_idx) {
		
		int count  =  tastingDao.requestCount(t_idx);
		
		return count;
	}

	@Override
	public List<TastingVo> requestList(TastingVo vo) {
		
		List<TastingVo> requestList  =  tastingDao.requestList(vo);
		
		return requestList;
	}





}

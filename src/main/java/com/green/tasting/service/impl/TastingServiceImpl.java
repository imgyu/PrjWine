package com.green.tasting.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


}

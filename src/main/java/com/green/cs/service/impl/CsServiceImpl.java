package com.green.cs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.board.vo.BoardVo;
import com.green.cs.dao.CsDao;
import com.green.cs.service.CsService;
import com.green.cs.vo.CsVo;

@Service("csService")
public class CsServiceImpl implements CsService {
	
	@Autowired
	private CsDao csDao;

	@Override
	public void userCsInsert(CsVo vo) {
		
		csDao.userCsInsert(vo);
	}
	public List<CsVo> getusercsList(CsVo vo) {
		List<CsVo> getusercsList = csDao.getusercsList( vo );
		return getusercsList;
	}

	@Override
	public List<CsVo> getcsalluserList(CsVo vo) {
		List<CsVo> csalluserList = csDao.getcsalluserList( vo );
		return csalluserList;
	}
	
	@Override
	public void storeCsInsert(CsVo vo) {
		
		csDao.storeCsInsert(vo);
		
	}
	@Override
	public List<CsVo> getcsviewList(CsVo vo) {
		List<CsVo> csviewList = csDao.getcsviewList( vo );
		return csviewList;
	}
	@Override
	public List<CsVo> getadmincsviewList(CsVo vo) {
		List<CsVo> admincsviewList = csDao.getadmincsviewList( vo );
		return admincsviewList;
	}
}

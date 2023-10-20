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
	public List<CsVo> getusercsList(CsVo vo) {
		List<CsVo> getusercsList = csDao.getusercsList( vo );
		return getusercsList;
	}
}

package com.green.cs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.cs.dao.CsDao;
import com.green.cs.service.CsService;

@Service("csService")
public class CsServiceImpl implements CsService {
	
	@Autowired
	private CsDao csDao;
}

package com.green.cs.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.cs.dao.CsDao;
import com.green.cs.vo.CsVo;

@Repository("csDao")
public class CsDaoImpl implements CsDao {

	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void userCsInsert(CsVo vo) {
		
		sqlSession.insert("Cs.UserCsInsert", vo);
	}
	
	
	public List<CsVo> getusercsList(CsVo vo) {
		List<CsVo> getusercsList = sqlSession.selectList("Cs.UsercsList",vo);
		System.out.println(getusercsList); 
	    return getusercsList;
	}

	@Override
	public List<CsVo> getcsalluserList(CsVo vo) {
		List<CsVo> csalluserList = sqlSession.selectList("Cs.CsAllUserList",vo);	
		
		System.out.println(csalluserList); 
		return csalluserList;
	}

	@Override
	public void storeCsInsert(CsVo vo) {
		
		sqlSession.insert("Cs.StoreCsInsert", vo);
		
	}


	@Override
	public List<CsVo> getcsviewList(CsVo vo) {
List<CsVo> csviewList = sqlSession.selectList("Cs.CsviewList",vo);	
		
		System.out.println(csviewList); 
		return csviewList;
	}


	@Override
	public List<CsVo> getadmincsviewList(CsVo vo) {
List<CsVo> admincsviewList = sqlSession.selectList("Cs.AdminCsviewList",vo);	
		
		System.out.println(admincsviewList); 
		return admincsviewList;
	}
	
	@Override
	public List<CsVo> getstorecsList(CsVo vo) {
		
		List<CsVo> storecsList  =  sqlSession.selectList("Cs.StorecsList", vo);
		
		return storecsList;
	}


	@Override
	public List<CsVo> getcsAllStoreList(CsVo vo) {
		
		List<CsVo> csAllStoreList  =  sqlSession.selectList("Cs.CsAllStoreList", vo);
		
		return csAllStoreList;
	}


	@Override
	public List<CsVo> getcsstoreviewList(CsVo vo) {

		List<CsVo> csstoreviewList  =  sqlSession.selectList("Cs.CsStoreView", vo);
		
		return csstoreviewList;
	}


	@Override
	public List<CsVo> getadmincsstoreviewList(CsVo vo) {

		List<CsVo> admincsstoreviewList  =  sqlSession.selectList("Cs.AdminCsStoreView", vo);
		
		return admincsstoreviewList;
	}
}

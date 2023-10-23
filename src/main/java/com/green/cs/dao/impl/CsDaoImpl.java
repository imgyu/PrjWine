package com.green.cs.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.cs.dao.CsDao;
import com.green.cs.vo.CsVo;
import com.green.pds.vo.PdsPagingVo;

@Repository("csDao")
public class CsDaoImpl implements CsDao {

	
	@Autowired
	private SqlSession sqlSession;

	@Override
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

	public int adminCsResponse(CsVo vo) {
		
		int UserCsResponse  =  sqlSession.update("Cs.AdminCsResponse", vo);
		
		return UserCsResponse;
	}



	public List<CsVo> getcsstoreviewList(CsVo vo) {

		List<CsVo> csstoreviewList  =  sqlSession.selectList("Cs.CsStoreView", vo);
		
		return csstoreviewList;
	}


	@Override
	public List<CsVo> getadmincsstoreviewList(CsVo vo) {

		List<CsVo> admincsstoreviewList  =  sqlSession.selectList("Cs.AdminCsStoreView", vo);
		
		return admincsstoreviewList;
	}


	@Override
	public int adminCsStoreResponse(CsVo vo) {
		
		int StoreCsresponse  =  sqlSession.update("Cs.AdminCsStoreResponse", vo);
		
		return StoreCsresponse;
	}


	@Override
	public int countCsUser(CsVo vo) {
		
		return sqlSession.selectOne("Cs.CountCsUser", vo);
	}


	@Override
	public List<CsVo> getUserCsList2(PdsPagingVo pds, int u_no) {
		
		HashMap<String, Object> map  =  new HashMap<>();
		map.put("pds", pds);
		map.put("u_no", u_no);
		map.put("start", pds.getStart());
		map.put("end", pds.getEnd());
		
		List<CsVo>  getUserCsList2  =  sqlSession.selectList("Cs.GetUserCsList2", map);
		
		return getUserCsList2;
	}


	@Override
	public int countCsStore(CsVo vo) {
		
		return sqlSession.selectOne("Cs.CountCsStore", vo);
	}


	@Override
	public List<CsVo> getStoreCsList2(PdsPagingVo pds, int s_no) {
		
		HashMap<String, Object> map  =  new HashMap<>();
		map.put("pds", pds);
		map.put("s_no", s_no);
		map.put("start", pds.getStart());
		map.put("end", pds.getEnd());
		
		List<CsVo> getStoreCsList2  =  sqlSession.selectList("Cs.GetStoreCsList2", map);
		
		return getStoreCsList2;
	}


	@Override
	public int countAdminCsUser() {
		
		return sqlSession.selectOne("Cs.CountAdminCsUser");
	}


	@Override
	public List<CsVo> csAdminUserList(PdsPagingVo pds) {
		
		List<CsVo> csAdminUserList  =  sqlSession.selectList("Cs.CsAdminUserList", pds);
		
		return csAdminUserList;
	}


	@Override
	public int countAdminCsStore() {
		
		return sqlSession.selectOne("Cs.CountAdminCsStore");
	}


	@Override
	public List<CsVo> csAdminStoreList(PdsPagingVo pds) {
		
		List<CsVo> csAdminStoreList  =  sqlSession.selectList("Cs.CsAdminStoreList", pds);
		
		return csAdminStoreList;
	}

	@Override
	public void userCsInsert(HashMap<String, Object> map) {
		
		 String ucs_img = (String) map.get("ucs_img");
		   
		   if (ucs_img == null || ucs_img.isEmpty()) {
				sqlSession.insert("Cs.UserCsInsert2", map);   
			} else {
				sqlSession.insert("Cs.UserCsInsert", map);
			}
		
	}

	@Override
	public void storeCsInsert(HashMap<String, Object> map) {

		 String scs_img = (String) map.get("scs_img");
		   
		   if (scs_img == null || scs_img.isEmpty()) {
				sqlSession.insert("Cs.StoreCsInsert2", map);   
			} else {
				sqlSession.insert("Cs.StoreCsInsert", map);
			}
		
	}
	
	

}

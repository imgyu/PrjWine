package com.green.cs.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.board.vo.BoardVo;
import com.green.cs.dao.CsDao;
import com.green.cs.service.CsService;
import com.green.cs.vo.CsVo;
import com.green.pds.vo.PdsPagingVo;
import com.green.store.service.impl.ImgFile;

@Service("csService")
public class CsServiceImpl implements CsService {
	
	@Autowired
	private CsDao csDao;	
	@Override
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
	public List<CsVo> getcsviewList(CsVo vo) {
		List<CsVo> csviewList = csDao.getcsviewList( vo );
		return csviewList;
	}
	
	@Override
	public List<CsVo> getadmincsviewList(CsVo vo) {
		List<CsVo> admincsviewList = csDao.getadmincsviewList( vo );
		return admincsviewList;
	}
	
		@Override	
	public List<CsVo> getstorecsList(CsVo vo) {
		
		List<CsVo> storecsList  =  csDao.getstorecsList(vo);
		
		return storecsList;
	}
		
	@Override
	public List<CsVo> getcsAllStoreList(CsVo vo) {
		List<CsVo>  csAllStoreList  =  csDao.getcsAllStoreList(vo);
		return csAllStoreList;
	}
	
	@Override
	public  int adminCsResponse(CsVo vo) {
		
		int UserCsResponse  =  csDao.adminCsResponse(vo);
		
		return UserCsResponse;
	}
	
	@Override
	public List<CsVo> getcsstoreviewList(CsVo vo) {
		
		List<CsVo> csstoreviewList  =  csDao.getcsstoreviewList(vo);
		
		return csstoreviewList;
	}
	
	@Override
	public List<CsVo> getadmincsstoreviewList(CsVo vo) {

		List<CsVo> admincsstoreviewList  =  csDao.getadmincsstoreviewList(vo);
		
		return admincsstoreviewList;
	}
	@Override
	public int adminCsStoreResponse(CsVo vo) {
		
		int StoreCsResponse  =  csDao.adminCsStoreResponse(vo);
		
		return StoreCsResponse;
	}
	@Override
	public int countCsUser(CsVo vo) {
		
		return csDao.countCsUser(vo);
	}
	@Override
	public List<CsVo> getUserCsList2(PdsPagingVo pds, int u_no) {
		
		List<CsVo> getUserCsList2  =  csDao.getUserCsList2(pds, u_no);
		
		return getUserCsList2;
	}
	@Override
	public int countCsStore(CsVo vo) {
		
		return csDao.countCsStore(vo);
	}
	@Override
	public List<CsVo> getStoreCsList2(PdsPagingVo pds, int s_no) {
		
		List<CsVo> getStoreCsList2  =  csDao.getStoreCsList2(pds, s_no);
		
		return getStoreCsList2;
	}
	@Override
	public int countAdminCsUser() {
		
		return csDao.countAdminCsUser();
	}
	@Override
	public List<CsVo> csAdminUserList(PdsPagingVo pds) {
		
		List<CsVo> csAdminUserList  =  csDao.csAdminUserList(pds);
		
		return csAdminUserList;
	}
	@Override
	public int countAdminCsStore() {
		
		return csDao.countAdminCsStore();
	}
	@Override
	public List<CsVo> csAdminStoreList(PdsPagingVo pds) {
		
	    List<CsVo> csAdminStoreList  =  csDao.csAdminStoreList(pds);
		
		return csAdminStoreList;
	}

	@Override
	public void userCsInsert(HashMap<String, Object> map, HttpServletRequest request) {
		

		ImgFile2.save( map, request );      
		
		csDao.userCsInsert(map);

	}

	@Override
	public void storeCsInsert(HashMap<String, Object> map, HttpServletRequest request) {

		ImgFile3.save( map, request );      

		csDao.storeCsInsert(map);

	}
}

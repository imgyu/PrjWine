package com.green.cs.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.cs.vo.CsVo;
import com.green.pds.vo.PdsPagingVo;

public interface CsService {

	
	List<CsVo> getusercsList(CsVo vo);
	
	void userCsInsert(HashMap<String, Object> map, HttpServletRequest request);

	List<CsVo> getcsalluserList(CsVo vo);

	List<CsVo> getcsviewList(CsVo vo);

	List<CsVo> getadmincsviewList(CsVo vo);
	
	List<CsVo> getstorecsList(CsVo vo);

	List<CsVo> getcsAllStoreList(CsVo vo);

	int adminCsResponse(CsVo vo);

	List<CsVo> getcsstoreviewList(CsVo vo);

	List<CsVo> getadmincsstoreviewList(CsVo vo);

	int adminCsStoreResponse(CsVo vo);

	int countCsUser(CsVo vo);

	List<CsVo> getUserCsList2(PdsPagingVo pds, int u_no);

	int countCsStore(CsVo vo);

	List<CsVo> getStoreCsList2(PdsPagingVo pds, int s_no);

	int countAdminCsUser();

	List<CsVo> csAdminUserList(PdsPagingVo pds);

	int countAdminCsStore();

	List<CsVo> csAdminStoreList(PdsPagingVo pds);

	void storeCsInsert(HashMap<String, Object> map, HttpServletRequest request);


}

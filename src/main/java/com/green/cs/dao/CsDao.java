package com.green.cs.dao;


import java.util.HashMap;
import java.util.List;

import com.green.cs.vo.CsVo;

public interface CsDao {

	void userCsInsert(CsVo vo);
	
	List<CsVo> getusercsList(CsVo vo);
	
    void storeCsInsert(CsVo vo);

	List<CsVo> getcsalluserList(CsVo vo);

	List<CsVo> getcsviewList(CsVo vo);

	List<CsVo> getadmincsviewList(CsVo vo);

	List<CsVo> getstorecsList(CsVo vo);

	List<CsVo> getcsAllStoreList(CsVo vo);

	int adminCsResponse(CsVo vo);
	
	List<CsVo> getcsstoreviewList(CsVo vo);

	List<CsVo> getadmincsstoreviewList(CsVo vo);

	int adminCsStoreResponse(CsVo vo);


}

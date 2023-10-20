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

	void adminCsResponse(CsVo vo);


}

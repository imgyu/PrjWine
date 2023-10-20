package com.green.cs.service;

import java.util.List;

import com.green.cs.vo.CsVo;

public interface CsService {

	List<CsVo> getusercsList(CsVo vo);

	List<CsVo> getcsalluserList(CsVo vo);

}

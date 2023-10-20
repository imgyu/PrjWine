package com.green.cs.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.board.vo.BoardVo;
import com.green.cs.dao.CsDao;
import com.green.cs.vo.CsVo;

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
}

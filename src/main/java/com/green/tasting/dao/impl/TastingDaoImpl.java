package com.green.tasting.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.tasting.dao.TastingDao;
import com.green.tasting.vo.TastingVo;
@Repository("tastingDao")
public class TastingDaoImpl implements TastingDao {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<TastingVo> getTastingList(TastingVo vo) {
		List<TastingVo> tastList = sqlSession.selectList("Taste.TastList", vo);
		return tastList;
	}

}

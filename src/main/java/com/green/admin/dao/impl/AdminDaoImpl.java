package com.green.admin.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.admin.dao.AdminDao;
import com.green.board.vo.BoardVo;
import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void deleteTastingList(TastingVo vo) {

		sqlSession.delete("Admin.AdminTastingListDelete", vo);
		
		
	}

	@Override
	public void deleteStoreList(StoreVo vo) {
		sqlSession.delete("Admin.AdminStoreListDelete", vo);
		
	}

	@Override
	public void deleteBoardList(BoardVo vo) {
		
		sqlSession.delete("Admin.AdminBoardListDelete", vo);
		
	}

	@Override
	public void deleteUserList(UserVo vo) {
		
		sqlSession.delete("Admin.AdminUserListDelete", vo);
		
	}

	@Override
	public int countUser() {
		
		return sqlSession.selectOne("Admin.CountUser");
	}

	@Override
	public List<UserVo> userList2(PdsPagingVo pds) {
		
		List<UserVo> userList2  =  sqlSession.selectList("Admin.AdminUserList2", pds);
		
		return userList2;
	}

	@Override
	public List<StoreVo> storeList2(PdsPagingVo pds) {
		
		List<StoreVo> storeList2  =  sqlSession.selectList("Admin.AdminStoreList2", pds);
		
		return storeList2;
	}

	@Override
	public int countStore() {
		
		return sqlSession.selectOne("Admin.CountStore");
	}

	@Override
	public int countTasting() {
		
		return sqlSession.selectOne("Admin.CountTasting");
	}

	@Override
	public List<TastingVo> tastingList2(PdsPagingVo pds) {
		
		 List<TastingVo> tastingList2  =  sqlSession.selectList("Admin.AdminTastingList2", pds);
		
		return tastingList2;
	}

	@Override
	public int countBoard() {
		
		return sqlSession.selectOne("Admin.CountBoard");
	}

	@Override
	public List<BoardVo> boardList2(PdsPagingVo pds) {
		
		 List<BoardVo> boardList2  =  sqlSession.selectList("Admin.AdminBoardList2", pds);
		
		return boardList2;
	}

	@Override
	public void WineInsert(WineVo vo) {
		
		sqlSession.insert("Admin.AdminWineInsert", vo);
		
	}

	@Override
	public List<WineVo> wineList(PdsPagingVo pds) {
		
		 List<WineVo> wineList  =  sqlSession.selectList("Admin.AdminWineList", pds);
		
		return wineList;
	}

	@Override
	public int countWine() {
		
		return sqlSession.selectOne("Admin.CountWine");
	}
	
	@Override
	public void deleteWineList(WineVo vo) {
		
		sqlSession.delete("Admin.AdminDeleteWineList", vo);
		
	}

	@Override
	public List<WineVo> searchList(PdsPagingVo pds, String searchKeyword, String searchOption, String kindOption) {
		List<WineVo> searchList = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("searchKeyword", searchKeyword);
  	    map.put("searchOption", searchOption);
  	    map.put("kindOption", kindOption);
  	    map.put("pds", pds);
  	    map.put("start", pds.getStart());
  	    map.put("end", pds.getEnd());
  	    searchList = sqlSession.selectList("Admin.AdWineList", map);
		return searchList;
	}

	@Override
	public int countWineSearch(String searchKeyword, String searchOption, String kindOption) {
		List<WineVo> searchList = new ArrayList<>();
		Map<String, Object> map = new HashMap<>();
		map.put("searchKeyword", searchKeyword);
  	    map.put("searchOption", searchOption);
  	    map.put("kindOption", kindOption);
		return sqlSession.selectOne("Admin.countWineSearch", map);
	}


}

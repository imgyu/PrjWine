package com.green.admin.dao.impl;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.admin.dao.AdminDao;
import com.green.board.vo.BoardVo;
import com.green.store.vo.StoreVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

@Repository("adminDao")
public class AdminDaoImpl implements AdminDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<UserVo> userList(UserVo vo) {
		
		List<UserVo> userList  =  sqlSession.selectList("Admin.AdminUserList", vo);  
		
		return userList;
	}

	@Override
	public List<StoreVo> storeList(StoreVo vo) {
		
		List<StoreVo> storeList  =  sqlSession.selectList("Admin.AdminStoreList", vo);
		
		return storeList;
	}

	@Override
	public List<TastingVo> tastingList(TastingVo vo) {

		List<TastingVo> tastingList  =  sqlSession.selectList("Admin.AdminTastingList", vo);
		
		return tastingList;
	}

	@Override
	public void deleteTastingList(TastingVo vo) {

		sqlSession.delete("Admin.AdminTastingListDelete", vo);
		
		
	}

	@Override
	public void deleteStoreList(StoreVo vo) {
		sqlSession.delete("Admin.AdminStoreListDelete", vo);
		
	}

	@Override
	public List<BoardVo> boardList(BoardVo vo) {
		
		List<BoardVo> boardList  =  sqlSession.selectList("Admin.AdminBoardList", vo);
		
		return boardList;
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
	public void wineInsert(HashMap<String, Object> map) {
		
		System.out.println(map);
		sqlSession.insert("Admin.AdminWineInsert", map);
		
	}

}

package com.green.admin.service.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.admin.dao.AdminDao;
import com.green.admin.service.AdminService;
import com.green.board.vo.BoardVo;
import com.green.store.service.impl.ImgFile;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;
	
	@Override
	public List<UserVo> userList(UserVo vo) {
		List<UserVo> userList  =  adminDao.userList(vo);
		return userList;
	}

	@Override
	public List<StoreVo> storeList(StoreVo vo) {
		List<StoreVo> storeList  =  adminDao.storeList(vo);
		return storeList;
	}

	@Override
	public List<TastingVo> tastingList(TastingVo vo) {
		
		List<TastingVo> tastingList  =  adminDao.tastingList(vo);
		
		return tastingList;
	}

	@Override
	public void deleteTastingList(TastingVo vo) {
		
		adminDao.deleteTastingList(vo);
		
	}

	@Override
	public void deleteStoreList(StoreVo vo) {
		adminDao.deleteStoreList(vo);
		
	}

	@Override
	public List<BoardVo> boardList(BoardVo vo) {
		
		List<BoardVo> boardList  =  adminDao.boardList(vo);
		
		return boardList;
	}

	@Override
	public void deleteBoardList(BoardVo vo) {
		
		adminDao.deleteBoardList(vo);
		
	}

	@Override
	public void deleteUserList(UserVo vo) {
		
		adminDao.deleteUserList(vo);
		
	}

	@Override
	public void wineInsert(@RequestParam  HashMap<String, Object> map, HttpServletRequest request) {
		
		ImgFile.save( map, request );  
		
		adminDao.wineInsert(map);
		
	}

}

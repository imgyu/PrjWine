package com.green.admin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.admin.dao.AdminDao;
import com.green.admin.service.AdminService;
import com.green.board.vo.BoardVo;
import com.green.event.vo.EventVo;
import com.green.pds.vo.PdsPagingVo;
import com.green.store.service.impl.ImgFile;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDao adminDao;

	@Override
	public void deleteTastingList(TastingVo vo) {
		
		adminDao.deleteTastingList(vo);
		
	}

	@Override
	public void deleteStoreList(StoreVo vo) {
		adminDao.deleteStoreList(vo);
		
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
	public int countUser() {
		
		return adminDao.countUser();
	}

	@Override
	public List<UserVo> userList2(PdsPagingVo pds) {
		
		List<UserVo> userList2  =  adminDao.userList2(pds);
		
		return userList2;
	}

	@Override
	public List<StoreVo> storeList2(PdsPagingVo pds) {
		
		List<StoreVo> storeList2  =  adminDao.storeList2(pds);
		
		return storeList2;
	}

	@Override
	public int countStore() {

		return adminDao.countStore();
	}

	@Override
	public int countTasting() {
		
		return adminDao.countTasting();
	}

	@Override
	public List<TastingVo> tastingList2(PdsPagingVo pds) {
		
		List<TastingVo> tastingList2  =  adminDao.tastingList2(pds);
		
		return tastingList2;
	}

	@Override
	public int countBoard() {
		
		return  adminDao.countBoard();
	}

	@Override
	public List<BoardVo> boardList2(PdsPagingVo pds) {
		
		 List<BoardVo> boardList2  =  adminDao.boardList2(pds);
		
		return boardList2;
	}

	@Override
	public void WineInsert(WineVo vo) {
		
		adminDao.WineInsert(vo);
		
	}

	@Override
	public List<WineVo> wineList(PdsPagingVo pds) {
		List<WineVo> wineList  =  adminDao.wineList(pds);
		return wineList;
	}

	@Override
	public int countWine() {
		
		return adminDao.countWine();
	}

	@Override
	public void deleteWineList(WineVo vo) {
		
		adminDao.deleteWineList(vo);
		
	}

	@Override
	public List<WineVo> searchList(PdsPagingVo pds,String searchKeyword, String searchOption, String kindOption) {
		List<WineVo> searchList = adminDao.searchList(pds,searchKeyword,searchOption,kindOption);
		return searchList;
	}

	@Override
	public int countWineSearch(String searchKeyword, String searchOption, String kindOption) {
		return adminDao.countWineSearch(searchKeyword,searchOption,kindOption);
	}

	@Override
	public List<EventVo> AdminEventEndList(PdsPagingVo pds) {
		List<EventVo> admineventendlist = adminDao.AdminEventEndList(pds);
		return admineventendlist;
	}

	@Override
	public List<EventVo> AdminEventList(PdsPagingVo pds) {
		List<EventVo> admineventlist = adminDao.AdminEventList(pds);
		
		return admineventlist;
	}

	@Override
	public int countEvent() {
		return adminDao.countEvent();
	}

	@Override
	public int countEndEvent() {
		return adminDao.countEndEvent();
	}

	@Override
	public void admineventlistdelete(EventVo vo) {
		adminDao.admineventlistdelete(vo);
		
	}

	@Override
	public void adminendeventlistdelete(EventVo vo) {
		adminDao.adminendeventlistdelete(vo);
		
	}


}

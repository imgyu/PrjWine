package com.green.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.board.vo.BoardVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

public interface AdminService {

	List<UserVo> userList(UserVo vo);

	List<StoreVo> storeList(StoreVo vo);

	List<TastingVo> tastingList(TastingVo vo);

	void deleteTastingList(TastingVo vo);

	void deleteStoreList(StoreVo vo);

	List<BoardVo> boardList(BoardVo vo);

	void deleteBoardList(BoardVo vo);

	void deleteUserList(UserVo vo);

	void wineInsert(HashMap<String, Object> map, HttpServletRequest request);

}

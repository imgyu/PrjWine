package com.green.admin.dao;

import java.util.List;

import com.green.board.vo.BoardVo;
import com.green.event.vo.EventVo;
import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

public interface AdminDao {

	void deleteTastingList(TastingVo vo);

	void deleteStoreList(StoreVo vo);

	void deleteBoardList(BoardVo vo);

	void deleteUserList(UserVo vo);

	int countUser();

	List<UserVo> userList2(PdsPagingVo pds);

	List<StoreVo> storeList2(PdsPagingVo pds);

	int countStore();

	int countTasting();

	List<TastingVo> tastingList2(PdsPagingVo pds);

	int countBoard();

	List<BoardVo> boardList2(PdsPagingVo pds);

	void WineInsert(WineVo vo);

	List<WineVo> wineList(PdsPagingVo pds);

	int countWine();

	void deleteWineList(WineVo vo);

	List<EventVo> AdminEventList(PdsPagingVo pds);

	int countEvent();

	List<EventVo> AdminEventEndList(PdsPagingVo pds);

	int countEndEvent();

	void admineventlistdelete(EventVo vo);

	void adminendeventlistdelete(EventVo vo); 




}

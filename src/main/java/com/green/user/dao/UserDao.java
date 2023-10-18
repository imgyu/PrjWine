package com.green.user.dao;

import java.util.List;

import com.green.store.vo.RegVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.vo.UserVo;

public interface UserDao {
	void insertUser(UserVo vo);

	UserVo userlogin(UserVo vo);

	int idCheck(String u_id);

	List<UserVo> getUserList(UserVo vo);

	void updateUser(UserVo vo);

	void updateUserPw(UserVo vo);

	List<PaymentVo> purchaseHistory(PaymentVo vo);

	void favoritesInsert(RegVo vo);

	List<RegVo> favoritesStoreList(RegVo vo);

	void favoriteDelete(RegVo vo);

}

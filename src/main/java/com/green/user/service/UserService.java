package com.green.user.service;

import java.util.List;

import com.green.user.cart.vo.PaymentVo;
import com.green.user.vo.UserVo;

public interface UserService {
	void insertUser(UserVo vo);

	UserVo userlogin(UserVo vo);

	int idCheck(String u_id);

	List<UserVo> getUserList(UserVo vo);

	void updateUser(UserVo vo);

	void updateUserPw(UserVo vo);

	List<PaymentVo> purchaseHistory(PaymentVo vo);



}

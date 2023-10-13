package com.green.user.dao;

import java.util.List;

import com.green.user.vo.UserVo;

public interface UserDao {
	void insertUser(UserVo vo);

	UserVo userlogin(UserVo vo);

	int idCheck(String u_id);

	List<UserVo> getUserList(UserVo vo);

	void updateUser(UserVo vo);

	void updateUserPw(UserVo vo);

}

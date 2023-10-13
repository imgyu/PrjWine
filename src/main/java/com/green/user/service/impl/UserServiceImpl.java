package com.green.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.dao.UserDao;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private  UserDao  userDao;
	
	@Override
	public void insertUser(UserVo vo) {
		
		userDao.insertUser( vo );

	}

	@Override
	public UserVo userlogin(UserVo vo) {

		UserVo loginVo = userDao.userlogin( vo );
		
		return loginVo;
	}

	@Override
	public int idCheck(String u_id) {
		
		int cnt  =  userDao.idCheck(u_id);
		
		return cnt;
	}

	@Override
	public List<UserVo> getUserList(UserVo vo) {
		
		List<UserVo> userList  =  userDao.getUserList(vo);
		
		return userList;
	}

	@Override
	public void updateUser(UserVo vo) {
		userDao.updateUser(vo);
		
	}

	@Override
	public void updateUserPw(UserVo vo) {
		userDao.updateUserPw(vo);
		
	}

	
	
	

}

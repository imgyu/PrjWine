package com.green.user.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.store.vo.RegVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.dao.UserDao;
import com.green.user.vo.UserVo;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertUser(UserVo vo) {

		// sqlSession :Mybatis 라이브러리를 사용한다
		sqlSession.insert("User.UserInsert", vo);

	}

	@Override
	public UserVo userlogin(UserVo vo) {

		UserVo loginVo = sqlSession.selectOne("User.UserLogin", vo);
		return loginVo;
	}

	@Override
	public int idCheck(String u_id) {

		int cnt = sqlSession.selectOne("User.IdCheck", u_id);

		return cnt;
	}

	@Override
	public List<UserVo> getUserList(UserVo vo) {
		List<UserVo> userList = sqlSession.selectList("User.UserList", vo);
		return userList;
	}

	@Override
	public void updateUser(UserVo vo) {

		sqlSession.update("User.UpdateUser", vo);

	}

	@Override
	public void updateUserPw(UserVo vo) {
		sqlSession.update("User.UpdateUserPw", vo);

	}

	@Override
	public List<PaymentVo> purchaseHistory(PaymentVo vo) {
		List<PaymentVo> purchaseHistory = sqlSession.selectList("User.PurchaseHistory", vo);
		return purchaseHistory;
	}

	@Override
	public void favoritesInsert(RegVo vo) {

		int favoritesInsertCheck;

		favoritesInsertCheck = sqlSession.selectOne("User.favoritesInsertCheck", vo);

		if (favoritesInsertCheck == 0) {
			sqlSession.insert("User.FavoritesInsert", vo);
		}

	}

	@Override
	public List<RegVo> favoritesStoreList(RegVo vo) {

		List<RegVo> favoritesStoreList = sqlSession.selectList("User.FavoritesStoreList", vo);

		return favoritesStoreList;
	}

	@Override
	public void favoriteDelete(RegVo vo) {

		sqlSession.delete("User.FavoriteDelete", vo);

	}

}

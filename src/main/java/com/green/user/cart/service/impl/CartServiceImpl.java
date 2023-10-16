package com.green.user.cart.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.user.cart.dao.CartDao;
import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;

@Service("cartService")
public class CartServiceImpl implements CartService {

   @Autowired
   private   CartDao  cartDao;


   @Override
   public List<CartVo> getCartList(CartVo vo) {
      
      List<CartVo>  cartList = cartDao.getCartList(vo);
      return cartList;
   }

   @Override
   public void deleteCart(CartVo vo) {
      cartDao.deleteCart(vo);
      
   }

@Override
public List<CartVo> getSelectList(int u_no, String cartids) {
	
	List<CartVo> getSelectList  =  cartDao.getSelectList(u_no, cartids);
	
	return getSelectList;
}

@Override
public void AddCart(CartVo vo) {

	cartDao.addCart(vo);
	
	
	
}



}


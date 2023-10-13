package com.green.user.cart.dao;

import java.util.HashMap;
import java.util.List;

import com.green.user.cart.vo.CartVo;

public interface CartDao {

   List<CartVo> getCartList(CartVo vo);

   void deleteCart(CartVo vo);

List<CartVo> getSelectList(int u_no, String cartids);




}
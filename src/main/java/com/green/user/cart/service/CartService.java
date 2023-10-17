package com.green.user.cart.service;

import java.util.HashMap;
import java.util.List;

import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.CartVo;
import com.green.user.cart.vo.PaymentVo;

public interface CartService {


   List<CartVo> getCartList(CartVo vo);

   void deleteCart(CartVo vo);

List<CartVo> getSelectList(int u_no, String cartids);

void AddCart(CartVo vo);

String insertPay(PaymentVo vo);







}
package com.green.user.cart.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class CartController {
   
   @Autowired
   private CartService cartService;
   
   @Autowired
   private UserService userService;
   //장바구니 목록   
   @RequestMapping("/CartList")
      public ModelAndView cart(CartVo vo) {
         
        int c_idx  =  vo.getC_idx();
        int u_no   =  vo.getU_no();
         List<CartVo> cartList  =  cartService.getCartList(vo);  
         
         
         ModelAndView  mv  =  new ModelAndView();
         mv.setViewName("user/cart");
         mv.addObject("cartList", cartList );
         mv.addObject("c_idx", c_idx);
         mv.addObject("u_no", u_no);
         return mv;
      }
   
   // 게시물 선택삭제
   @ResponseBody
   @RequestMapping("/CartDelete") 
   public int cartDelete(@RequestParam(value = "valueArr[]") String[] valueArr, CartVo vo ) {
         
         
         
         for(String value : valueArr) {
            vo.setC_idx(Integer.parseInt(value));
            cartService.deleteCart(vo);
            System.out.println(vo);
            System.out.println(value);
            
         }
         return 1;
   }
    
    
	@RequestMapping("/UserPayment")
	public ModelAndView userPayment(CartVo vo, UserVo user) {
		
    	List<CartVo> cartList  =  cartService.getCartList(vo);
    	List<UserVo> userList  =  userService.getUserList(user);

		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("user/payment");
		mv.addObject("cartList", cartList);
		mv.addObject("userList", userList);
		return mv;
	}
	
   
}
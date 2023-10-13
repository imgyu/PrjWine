package com.green.user.cart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
    
   // map:{u_no=1, cartids=1,2, rowCheck=1}
   @RequestMapping("/UserPayment")
   public ModelAndView userPayment(@RequestParam HashMap<String, Object> map) {
      
      System.out.println("map:" + map);
      // input 에 있는 value=name cartids 를 받아온다 
      String cartids = String.valueOf( map.get("cartids") ); 

      UserVo user = new UserVo();
      int u_no = Integer.parseInt( String.valueOf( map.get("u_no") ));
      user.setU_no(u_no);
      
       // 선택 한 주문 목록 
       List<CartVo> selCartList  =  cartService.getSelectList(u_no, cartids);
       // 유저목록 
       List<UserVo> userList  =  userService.getUserList(user);

      ModelAndView mv  =  new ModelAndView();
      mv.setViewName("user/payment");
      mv.addObject("selCartList", selCartList);
      mv.addObject("userList", userList);
      return mv;
   }  
   
   @GetMapping("/WinePay")
   @ResponseBody
   public void winePay(int amount, String imp_uid, String merchant_uid) throws Exception {
	    
	   	    	   
	    System.out.println("결제 성공");
		System.out.println("결제 금액 : " + amount);
		System.out.println("imp_uid : " + imp_uid);
		System.out.println("merchant_uid : " + merchant_uid);
	   
   }
   
   
}
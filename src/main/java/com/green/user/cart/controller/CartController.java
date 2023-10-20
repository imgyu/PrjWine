package com.green.user.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.store.vo.HavingWineVo;
import com.green.user.cart.service.CartService;
import com.green.user.cart.vo.CartVo;
import com.green.user.cart.vo.PaymentVo;
import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class CartController {
   
   @Autowired
   private CartService cartService;
   
     
   @Autowired
   private UserService userService;
   
   
   
   @PostMapping("/insertPay")
   @ResponseBody
   public String insertPay(@RequestBody PaymentVo pay) {
	   
	   System.out.println(pay);
	    
       String view  =  cartService.insertPay(pay);
       
	   return view;
   }
   
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
   
   @RequestMapping("/AddCartForm")
   public ModelAndView addCartForm(HavingWineVo vo) {
	   
	   List<HavingWineVo> selCartList  =  cartService.selCartList(vo);
	   
	   ModelAndView mv  =  new ModelAndView();
	   mv.setViewName("user/selcartlist");
	   mv.addObject("wineList", selCartList);
	   return mv;
   }
   
   
   // /AddtoCart?u_no=${wine.u_no}&wl_idx=${wine.wl_idx}
   @RequestMapping("/AddCart")
   public ModelAndView AddCart(CartVo vo) {
	   
	   int u_no   =  vo.getU_no();        
 
       
       cartService.AddCart(vo);
       
       ModelAndView  mv  =  new ModelAndView();
       mv.addObject("vo", vo);
       mv.addObject("u_no", u_no);
       mv.setViewName("redirect:/CartList");
       mv.addObject("message", "장바구니에 추가되었습니다");
      
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
   public ModelAndView userPayment(@RequestParam HashMap<String, Object> map, CartVo vo) {
      
      
      // input 에 있는 value=name cartids 를 받아온다 
      String cartids = String.valueOf( map.get("cartids") ); 

      UserVo user = new UserVo();
      int u_no = Integer.parseInt( String.valueOf( map.get("u_no") ));
      user.setU_no(u_no);
      
       
       // 선택 한 주문 목록 
       List<CartVo> selCartList  =  cartService.getSelectList(u_no, cartids);
       // 유저목록 
       List<UserVo> userList  =  userService.getUserList(user);
       System.out.println("map:" + map);
      ModelAndView mv  =  new ModelAndView();
      mv.setViewName("user/payment");
      mv.addObject("selCartList", selCartList);
      mv.addObject("userList", userList);
      return mv;
   }   
   
}
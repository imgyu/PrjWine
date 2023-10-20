package com.green.cs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.cs.service.CsService;
import com.green.cs.vo.CsVo;
import com.green.user.cart.vo.CartVo;

@Controller
public class CsController {
	
	@Autowired
	private CsService csService;
	
	//UserCs?u_no=${loginVo.u_no }
	@RequestMapping("/UserCs")
	 public ModelAndView usercs(CsVo vo)
	{
		 int u_no  =  vo.getU_no();
		 
		 List<CsVo> usercsList  =  csService.getusercsList(vo);  
		
		 ModelAndView mv = new ModelAndView();
         mv.setViewName("cs/usercs");
         mv.addObject("usercsList", usercsList );
         mv.addObject("u_no", u_no);
         
         System.out.println(mv);
         return mv;
		
	}
	
}

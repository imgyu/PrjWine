package com.green.cs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.cs.service.CsService;
import com.green.cs.vo.CsVo;

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
	@RequestMapping("/CsAllUser")
	public ModelAndView csalluser(CsVo vo)
	{
		List<CsVo> csalluserList  =  csService.getcsalluserList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/csuser");
		mv.addObject("csalluserList", csalluserList );
		
		System.out.println(mv);
		return mv;
		
	}
	
}

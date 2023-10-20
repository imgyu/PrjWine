package com.green.cs.controller;

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
	
	
	
	
	
	
	
	
	@RequestMapping("/UserCsInquiryForm")
	public ModelAndView userCsInquiryForm() {
		
		
		
		ModelAndView  mv  = new ModelAndView();  
		mv.setViewName("cs/csinquiry");
		return mv;
	}
	
	@RequestMapping("/UserCsInquiry")
	public ModelAndView userCsInquiry(CsVo vo) {
		
		csService.userCsInsert(vo);
		
		ModelAndView mv  =  new ModelAndView();
		
		return mv;
	}
	
	
}

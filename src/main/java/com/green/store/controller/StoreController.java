package com.green.store.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;
import com.green.store.vo.WineVo;


@Controller
public class StoreController {
	
	@Autowired
	private  StoreService   storeService;
	
	@RequestMapping("/StoreList")
	public String storelist() {
		return "/store/storelist";
	}
	
	@RequestMapping("/Storegoinfo")
	public String storegoinfo() {
		return "/store/storeinfo";
	}
	/*
	 //StoreWineManage?s_no
	@RequestMapping("/StoreWineManage")
	public String storewinemanage() {
		
		
		
		
		return "/store/storewinemanage";
	}
	*/
	 


	
	@RequestMapping("/StoreWineRegister")
	public ModelAndView storewineregister() {
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("/store/storewineregister");
		return mv;
	}	
		
		
}

package com.green.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.RegVo;

@Controller
public class StoreController {
	@Autowired
	private  StoreService storeService;
	
	//매장리스트
	@RequestMapping("/StoreList")
	public String storelist() {
		return "/store/storelist";
	}
	//매장정보
	@RequestMapping("/Storegoinfo")
	public String storegoinfo() {
		return "/store/storeinfo";
	}
	
	//보유와인리스트
	@RequestMapping("/StoreWineManage")
	public String storewinemanage() {
		return "/store/storewinemanage";
	}
	
	//판매기록 이동
	@RequestMapping("/Store/SalesHistory")
	public String saleshistory() {
				return "/store/saleshistory";
	}
	
	//와인등록
	 @RequestMapping("/StoreWineRegister") 
	 public ModelAndView storewineregister(RegVo vo) {
	 
		 storeService.insertSearch(vo);
		 ModelAndView mv = new ModelAndView();
		 mv.addObject("vo", vo );
		 mv.setViewName("redirect:/store/storewinemanage");
		 return mv;
	 }
	 
	 //와인등록폼
	 @RequestMapping("/StoreWineRegisterForm") 
	 public String storewineregisterform() {
		 return "/store/storewineregisterform"; 
	 }
	 
	 //와인검색
	 @RequestMapping("/StoreWineSearch")
	 public ModelAndView searchWine(RegVo vo) {
		 List<RegVo> searchList = storeService.getSearchList(vo);
		 
		 ModelAndView  mv = new ModelAndView("wine-search-result");
		 mv.addObject("searchList", searchList);
		 mv.setViewName("/store/storewineregisterform");
		 
		 System.out.println(mv);
		 return mv;
	 }
	 


	 
	
}

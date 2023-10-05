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
	 
	 
	// 와인 리스트 
	@RequestMapping("/StoreWineManage")
	public ModelAndView storewinemanage(StoreVo vo) {
		
		List<HavingWineVo> wineList  =  storeService.getWineList(vo);  
		
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("/store/storewinemanage");
		mv.addObject("wineList", wineList );
		return mv;
	}

	
	@RequestMapping("/StoreWineRegister")
	public ModelAndView storewineregister() {
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("/store/storewineupdate");
		return mv;
	}	
		
		// 와인 수정 기능 
		@RequestMapping("/WineUpdateForm")
		public ModelAndView windUpdateForm(StoreVo vo) {
			
			// 수정할 정보 조회
			List<HavingWineVo> wineList  =  storeService.getWineList(vo);
			
			
			
			ModelAndView  mv  =  new ModelAndView();
			mv.setViewName("/store/storewineupdate");
			mv.addObject("wine", wineList);
			return mv;
		}
		
		@RequestMapping("/WineUpdate") 
		public ModelAndView wineUpdate(WineListVo vo ) {
			
			// 매장 와인 재고 수정 
			storeService.updateWine(vo);
			
			ModelAndView mv  =  new ModelAndView();
			mv.setViewName("redirect:/StoreWineManage" );
			
			
			return mv;
		}
		
		@RequestMapping("/WineDelete")
		public String wineDelete() {
			
			// Wine 데이터 삭제 
			
			
			return "redirect:/StoreWineManage";
		}
	
}

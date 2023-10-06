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

	//매장와인목록
	@RequestMapping("/StoreWineManage")
	public ModelAndView storewinemanage(StoreVo vo) {
		
		List<HavingWineVo> wineList  =  storeService.getWineList(vo);  
		
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("/store/storewinemanage");
		mv.addObject("wineList", wineList );
		return mv;
	}

	//매장와인등록
	@RequestMapping("/StoreWineRegister")
	public ModelAndView storewineregister() {
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("/store/storewineregister");
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
		 
		 ModelAndView  mv = new ModelAndView();
		 mv.addObject("searchList", searchList);
		 mv.setViewName("/store/storewineregisterform");
		 
		 System.out.println(mv);
		 return mv;
	 }
	 


	 
	
	//매장 정보 확인 페이지 이동
	@RequestMapping("/StoreCheck")
	public String storecheck() {
		return "/store/storecheck";
	}
	
	//매장 정보 수정 페이지 이동
	@RequestMapping("/StoreCheckUpdate")
	public String storecheckupdate() {
		return "/store/storeupdateform";
	}
}

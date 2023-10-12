package com.green.store.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineListVo;
import com.green.store.vo.WineVo;
import com.green.user.vo.UserVo;



@Controller
public class StoreController {
	@Autowired
	private  StoreService storeService;
	
	//매장 검색
	@RequestMapping("/SnameSearch")
    public ModelAndView sname_Search(
          @RequestParam("sname_Search") String sname_Search
          ) {
       List<StoreVo> snameSearch = storeService.snameSearch(sname_Search);
       ModelAndView mv = new ModelAndView();
       mv.addObject("snameSearch",snameSearch);
       mv.setViewName("/store/storelist");
       return mv;
       
    }
	
	
	//매장리스트
	@RequestMapping("/StoreList")
	public ModelAndView storelist(StoreVo vo) {
		List<StoreVo> storeList = storeService.storeList(vo);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/store/storelist");
		mv.addObject("storeList", storeList );
		return mv;
	}
	

	//판매기록 이동
	@RequestMapping("/Store/SalesHistory")
	public String saleshistory() {
				return "/store/saleshistory";
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
	
	@RequestMapping("/StoreInfo")
	public ModelAndView storeinfo(StoreVo vo) {
		
		List<StoreVo> storeInfo  =  storeService.getStoreInfo(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("/store/storeinfo");
		mv.addObject("storeInfo", storeInfo);
		
		System.out.println(mv);
		return mv;
	}
}

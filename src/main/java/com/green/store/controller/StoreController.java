package com.green.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public ModelAndView storecheck(StoreVo vo) {
		
		int s_no  =  vo.getS_no();
		List<StoreVo> storeCheck  =  storeService.getStoreCheck(vo);
		System.out.println(storeCheck);
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("/store/storecheck");
		mv.addObject("storeCheck", storeCheck);
		mv.addObject("s_no", s_no);
		
		return mv;
	}
	
	//매장 정보 수정 페이지 이동
	@RequestMapping("/StoreCheckUpdateForm")
	public ModelAndView storecheckupdate(StoreVo vo) {
		
		int s_no  =  vo.getS_no();
		
		List<StoreVo> storeCheck  =  storeService.getStoreCheck(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("/store/storeupdateform");
		mv.addObject("storeCheck", storeCheck);
		mv.addObject("s_no", s_no);
		return mv;
	}
	
	@RequestMapping("StoreCheckUpdate")
	public ModelAndView storeCheckUpdate(@RequestParam HashMap<String, Object> map, HttpServletRequest request) {
		
		int s_no = Integer.parseInt(String.valueOf(map.get("s_no")));
		storeService.storeUpdate(map,request);
		
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("redirect:/StoreCheck?s_no=" + s_no);
		
		mv.addObject("map", map);
		
		return mv;
	}
	
	@RequestMapping("/StoreInfo")
	public ModelAndView storeinfo(StoreVo vo) {
		
		List<StoreVo> storeInfo  =  storeService.getStoreInfo(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("/store/storeinfo");
		mv.addObject("storeInfo", storeInfo);
		
		System.out.println(storeInfo);
		return mv;
	}
}

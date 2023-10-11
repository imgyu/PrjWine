package com.green.tasting.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.RegVo;
import com.green.tasting.service.TastingService;
import com.green.tasting.vo.TastingVo;

@Controller
public class TastingWineController {
	@Autowired
	private TastingService tastingService;
	
	@Autowired
	private StoreService storeService;
	
	// 시음회 정보
	@RequestMapping("/TastingList")
	public ModelAndView tastingList(TastingVo vo) {
		List<TastingVo> tastList = tastingService.getTastList(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("tastList", tastList);
		//System.out.println("tastList: "+tastList);
		mv.setViewName("/tasting/tastinglist");
		return mv;
	}

	// 시음회 등록 화면
	@RequestMapping("/TastingWriteForm")
	public ModelAndView TastingWriteForm(TastingVo vo ){
	
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("vo", vo);
		mv.setViewName("/tasting/tastingwrite");
		return mv;
	}

	// 시음회 등록
	@RequestMapping("/TastingWrite")
	public ModelAndView TastingWrite( TastingVo vo,@RequestParam("searchKeyword") String searchKeyword,
			@RequestParam("searchOption")  String searchOption,
			@RequestParam("kindOption")    String kindOption ){
		
		List<RegVo> searchList = storeService.searchList(searchKeyword, searchOption, kindOption);
		ModelAndView mv = new ModelAndView();
		mv.addObject("searchList", searchList);
		mv.addObject("vo", vo);
		

		System.out.println("vo: "+ vo);
		mv.setViewName("redirect:/tasting/tastingwrite");

		return mv;
	}

	// 신청한 시음회
	@RequestMapping("/UserTasting")
	public String userTasting() {

		return "/tasting/usertasting";
	}
		
		
		
}

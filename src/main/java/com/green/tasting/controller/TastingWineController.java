package com.green.tasting.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.vo.RegVo;
import com.green.tasting.service.TastingService;
import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.CartVo;

@Controller
public class TastingWineController {
	@Autowired
	private TastingService tastingService;
	
	// 시음회 정보
	@RequestMapping("/TastingList")
	public ModelAndView tastingList(TastingVo vo) {
		List<TastingVo> tastList = tastingService.getTastList(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("tastList", tastList);
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
	public ModelAndView TastingWrite(TastingVo vo ){
		tastingService.insertTaste(vo);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("redirect:/TastingList");
		return mv;
	}
	

	// 신청한 시음회
	@RequestMapping("/UserTasting")
	public ModelAndView UserTasting(TastingVo vo) {
		List<TastingVo> usertasting = tastingService.getUserTasting(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("usertasting", usertasting);
		mv.setViewName("/tasting/usertasting");
		
		return mv;
	}
	
	// ajax 호출의 대상	
	@RequestMapping("/Tasting/WineList")
	@ResponseBody
	public  List<RegVo>  tastingWineList(@RequestParam HashMap<String, Object> map) {
		List<RegVo> searchList = tastingService.searchList(map);
		return searchList;
	}
	
	@RequestMapping("/TastingBoard")
	public ModelAndView tastingboard(TastingVo vo){
		List<TastingVo> tastingBoard = tastingService.tastingBoard(vo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("tastingBoard", tastingBoard);
		mv.setViewName("/tasting/tastingboard");
		return mv;
	}
	@RequestMapping("/TastingListDelete")
	public ModelAndView tastingListDelete(TastingVo vo) {
		tastingService.deleteTaste( vo );
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/TastingList");
		return mv;
	}
	
		
	@ResponseBody
	@RequestMapping("/UserTastingDelete")
	 public int tastDelete(@RequestParam(value = "valueArr[]") String[] valueArr, TastingVo vo ) {
        
        for(String value : valueArr) {
           vo.setT_idx(Integer.parseInt(value));
           tastingService.deleteTasting(vo);
            
        }
        return 1;
  }
}















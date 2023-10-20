package com.green.store.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.board.service.BoardService;
import com.green.board.vo.BoardVo;
import com.green.store.service.StoreService;
import com.green.store.vo.StoreVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.cart.vo.PaymentVo;



@Controller
public class StoreController {
	@Autowired
	private  StoreService storeService;
	@Autowired
	private  BoardService boardService;
	
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
	public ModelAndView storelist(StoreVo vo, BoardVo vo2) {
		List<StoreVo> storeList  =  storeService.storeList(vo);
		List<BoardVo> boardList  =  boardService.getBoardList(vo2);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/store/storelist");
		mv.addObject("storeList", storeList );
		mv.addObject("boardList", boardList);
		return mv;
	}
	

	//판매기록 이동
	@RequestMapping("/SalesHistory")
	public ModelAndView saleshistory(PaymentVo vo) {
		
		List<PaymentVo> salesHistory  =  storeService.salesHistory(vo);
		System.out.println(salesHistory);
		ModelAndView  mv  =  new ModelAndView();
		mv.setViewName("/store/saleshistory");
		mv.addObject("salesHistory", salesHistory);
		return mv;
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
	public ModelAndView storeinfo(StoreVo vo, BoardVo vo2) {
		
		List<StoreVo> storeInfo  =  storeService.getStoreInfo(vo);
		List<BoardVo> boardList  =  boardService.getBoardList(vo2);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("/store/storeinfo");
		mv.addObject("storeInfo", storeInfo);
		mv.addObject("boardList", boardList);
		return mv;
	}
	
	@RequestMapping("/SalesHistoryUpdate")
	public ModelAndView sHistoryUpdate(@RequestParam(value = "valueArr") String[] valueArr, PaymentVo vo) {
		
		for (String paynum : valueArr) {
			vo.setPaynum(paynum);
	        storeService.updateShistory(vo);
	    }
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/SalesHistory");
		return mv;
	}
	
}

	
	
	
	
	
	
package com.green.store.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;


@Controller
public class StoreWineController {

	@Autowired
	private StoreService storeService;
	
	// 와인 리스트 조회 
	@RequestMapping("/StoreListSearch")
	public ModelAndView storeListSearch(   HavingWineVo vo,	 
			@RequestParam("searchKeyword") String searchKeyword, 
			@RequestParam("searchOption")  String searchOption,
			@RequestParam("kindOption")    String kindOption,
			@RequestParam("amountOption")  String amountOption,
			HttpSession session) {
		
		System.out.println("searchOption:" + searchOption);
		int s_no  =  vo.getS_no();
		List<RegVo> storeListSearch  =  storeService.getStoreListSearch( s_no, searchKeyword, searchOption, kindOption, amountOption);
		
		System.out.println("searchKeyword2:"+searchKeyword);
		System.out.println("searchOption3:"+searchOption);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("store/storewinemanage");
		mv.addObject("storeListSearch", storeListSearch);
		mv.addObject("s_no", s_no);
		return mv;
	}
	
	// 와인 리스트 (임규)
	@RequestMapping("/StoreWineManage")
	public ModelAndView storewinemanage(HavingWineVo vo) {
		
		String s_name  =  vo.getS_name();
		int s_no       =  vo.getS_no();
		
		// 각 매장별 보유 와인 조회
		List<HavingWineVo> wineList = storeService.getWineList(vo);
		System.out.println(s_no);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("store/storewinemanage");
		mv.addObject("wineList", wineList);
		mv.addObject("s_name", s_name);
		mv.addObject("s_no", s_no);

		return mv;
	}

	// 와인 수정 화면 (임규)
	@RequestMapping("/WineUpdateForm")
	public ModelAndView windUpdateForm(HavingWineVo vo) {

		int idx = vo.getWl_idx();

		int s_no = vo.getS_no();

		List<HavingWineVo> selectList = storeService.selectList(vo);
		System.out.println("선택한 와인 정보" + selectList);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/store/storewineupdate");
		mv.addObject("selectList", selectList);
		mv.addObject("idx", idx);
		mv.addObject("s_no", s_no);

		return mv;
	}

	// 와인 수정 기능 (임규)
	@RequestMapping("/WineUpdate")
	public ModelAndView wineUpdate(HavingWineVo havingVo) {

		storeService.updateWineList(havingVo);
		System.out.println(havingVo);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/StoreWineManage?s_no=" + havingVo.getS_no());

		return mv;
	}

	// Wine 데이터 삭제 (임규)
	@RequestMapping("/WineDelete")
	public String wineDelete(HavingWineVo havingVo) {

		storeService.deleteWineList(havingVo);

		return "redirect:/StoreWineManage?s_no=" + havingVo.getS_no();
	}

	// 와인검색 (영태)
	@RequestMapping("/StoreWineSearch")
	public ModelAndView winesearch(@RequestParam("searchKeyword") String searchKeyword
			,@RequestParam("searchOption") String searchOption
			,@RequestParam("kindOption") String kindOption
			) {

		List<RegVo> searchList = storeService.searchList(searchKeyword, searchOption, kindOption);
		ModelAndView mv = new ModelAndView();
		mv.addObject("searchList", searchList);
		mv.setViewName("/store/storewineregisterform");
		return mv;
	}
	
	// 와인등록폼 (영태)
	   @RequestMapping("/StoreWineRegisterForm")
	   public String storewineregisterform() {
	      return "/store/storewineregisterform";
	   }
	
	// 와인등록 (영태)
	@RequestMapping("/StoreWineRegister")
	public ModelAndView storewineregister(RegVo vo,@RequestParam("selectedOption") int selectedOption,
			@RequestParam("w_amount") int w_amount, @RequestParam("w_price") int w_price,
			@RequestParam("s_no") int s_no, @RequestParam("w_no") int w_no, @RequestParam("w_name") String w_name,
			@RequestParam("w_location") String w_location, @RequestParam("w_vintage") String w_vintage,
			@RequestParam("w_kind") String w_kind) {
		
		s_no = vo.getS_no();

		storeService.insertWine(selectedOption, w_amount, w_price, s_no, w_no);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/StoreWineManage?s_no="+vo.getS_no());
		return mv;
	}
	
}

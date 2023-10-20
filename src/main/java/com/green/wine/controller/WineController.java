package com.green.wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.store.service.StoreService;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;
import com.green.wine.service.WineService;

@Controller
public class WineController {
	
	@Autowired
	private  WineService   wineService;
	
	//와인리스트 페이지 이동
	@RequestMapping("/WineList")
	public String winelist() {
		return "redirect:/All_Click";
	}

	//와인정보 페이지 이동	
		@RequestMapping("/WineInfo")
		public ModelAndView wineinfo(WineVo vo, HavingWineVo store) {
			
			// 보유한 주변 매장 찾기
			List<HavingWineVo> storeList  =  wineService.getStoreList(store);
			
			// 와인별 정보 보기 
			List<WineVo> wineInfo  =  wineService.getWineInfo(vo);
			
			ModelAndView mv  =  new ModelAndView();
			mv.setViewName("/wine/wineinfo");
			mv.addObject("wineInfo", wineInfo);
			mv.addObject("storeList", storeList);
			
			
			return mv;
		}
	
	//와인 등록 페이지 이동
	@RequestMapping("/WineJoinForm")
	public String winejoin() {
		
		return "/wine/winejoinform";
	}
	
	// 와인이름검색 (영태)
    @RequestMapping("/NameSearch")
    public ModelAndView nameSearch(
          @RequestParam("name_Search") String name_Search
          ) {
       List<RegVo> nameSearch = wineService.nameSearch(name_Search);
       ModelAndView mv = new ModelAndView();
       mv.addObject("nameSearch",nameSearch);
       mv.setViewName("/wine/winelist");
       return mv;
       
    }
	
 // 와인버튼ALL검색 (영태)
    @RequestMapping("/All_Click")
    public ModelAndView allclick( String all_click ) {
       List<RegVo> allClick = wineService.allClick(all_click);
       ModelAndView mv = new ModelAndView();
       mv.addObject("allClick",allClick);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼레드와인검색 (영태)
    @RequestMapping("/Red_Click")
    public ModelAndView redclick( String red_click ) {
       List<RegVo> redClick = wineService.redClick(red_click);
       ModelAndView mv = new ModelAndView();
       mv.addObject("redClick",redClick);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼화이트와인검색 (영태)
    @RequestMapping("/White_Click")
    public ModelAndView whiteclick( String white_click ) {
       List<RegVo> whiteClick = wineService.whiteClick(white_click);
       ModelAndView mv = new ModelAndView();
       mv.addObject("whiteClick",whiteClick);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼스파클링검색 (영태)
    @RequestMapping("/Sparkling_Click")
    public ModelAndView sparklingclick( String sparkling_click ) {
       List<RegVo> sparkClick = wineService.sparkClick(sparkling_click);
       ModelAndView mv = new ModelAndView();
       mv.addObject("sparkClick",sparkClick);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼로제검색 (영태)
    @RequestMapping("/Rose_Click")
    public ModelAndView roseclick( String rose_click ) {
       List<RegVo> roseClick = wineService.roseClick(rose_click);
       ModelAndView mv = new ModelAndView();
       mv.addObject("roseClick",roseClick);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼기타검색 (영태)
    @RequestMapping("/Other_Click")
    public ModelAndView otherclick( String other_click ) {
       List<RegVo> otherClick = wineService.otherClick(other_click);
       ModelAndView mv = new ModelAndView();
       mv.addObject("otherClick",otherClick);
       mv.setViewName("/wine/winelist");
       return mv;
    }
   
    
}

package com.green.wine.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.admin.service.AdminService;
import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.HavingWineVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.WineVo;
import com.green.wine.service.WineService;

@Controller
public class WineController {
	
	@Autowired
	private  WineService   wineService;
	
	@Autowired
	private AdminService adminService;
	
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
			int w_no  =  vo.getW_no();
			// 와인별 정보 보기 
			List<WineVo> wineInfo  =  wineService.getWineInfo(vo);
			
			ModelAndView mv  =  new ModelAndView();
			mv.setViewName("/wine/wineinfo");
			mv.addObject("wineInfo", wineInfo);
			mv.addObject("storeList", storeList);
			mv.addObject("w_no", w_no);
			
			return mv;
		}
	
	//와인 등록 페이지 이동
	@RequestMapping("/WineJoinForm")
	public String winejoin() {
		
		return "/wine/winejoinform";
	}
	
	// 와인이름검색 (영태)
    @RequestMapping("/NameSearch")
    public ModelAndView nameSearch(RegVo vo,
          @RequestParam("name_Search") String name_Search,
          PdsPagingVo pds,
		  @RequestParam(value="nowPage", required = false)String nowPage,
		  @RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
     
    	int total  =  wineService.countWineSearch(name_Search);
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
		int w_no  =  vo.getW_no();
		
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       List<RegVo> nameSearch = wineService.nameSearch(name_Search, pds);
       ModelAndView mv = new ModelAndView();
       mv.addObject("nameSearch",nameSearch);
       mv.addObject("pds", pds);
       mv.addObject("name_Search", name_Search);
       mv.setViewName("/wine/winelist");
       return mv;
       
    }
	
 // 와인버튼ALL검색 (영태)
    @RequestMapping("/All_Click")
    public ModelAndView allclick(RegVo vo, String all_click, 
    		PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
       
    	int total  =  wineService.countWineAll();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
		int w_no  =  vo.getW_no();
		
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
    	
    	List<RegVo> allClick = wineService.allClick(all_click, pds);
       
       
       ModelAndView mv = new ModelAndView();
       mv.addObject("allClick",allClick);
       mv.setViewName("/wine/winelist");
       mv.addObject("pds", pds);
       return mv;
    }
    
 // 와인버튼레드와인검색 (영태)
    @RequestMapping("/Red_Click")
    public ModelAndView redclick(RegVo vo, String red_click,
    		PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
       
    	int total  =  wineService.countWineRed();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
	   int w_no  =  vo.getW_no();
		
	   pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       List<RegVo> redClick = wineService.redClick(red_click, pds);
       ModelAndView mv = new ModelAndView();
       mv.addObject("redClick",redClick);
       mv.setViewName("/wine/winelist");
       mv.addObject("pds", pds);
       return mv;
    }
    
 // 와인버튼화이트와인검색 (영태)
    @RequestMapping("/White_Click")
    public ModelAndView whiteclick(RegVo vo, String white_click,PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
       
    	int total  =  wineService.countWineWhite();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
	   int w_no  =  vo.getW_no();
		
	   pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       List<RegVo> whiteClick = wineService.whiteClick(white_click, pds);
       ModelAndView mv = new ModelAndView();
       mv.addObject("whiteClick",whiteClick);
       mv.addObject("pds", pds);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼스파클링검색 (영태)
    @RequestMapping("/Sparkling_Click")
    public ModelAndView sparklingclick(RegVo vo, String sparkling_click,PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
       
    	int total  =  wineService.countWineSpark();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
	   int w_no  =  vo.getW_no();
		
	   pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       List<RegVo> sparkClick = wineService.sparkClick(sparkling_click, pds);
       ModelAndView mv = new ModelAndView();
       mv.addObject("sparkClick",sparkClick);
       mv.addObject("pds", pds);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼로제검색 (영태)
    @RequestMapping("/Rose_Click")
    public ModelAndView roseclick(RegVo vo, String rose_click,
    		PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
       
    	int total  =  wineService.countWineRose();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
	   int w_no  =  vo.getW_no();
		
	   pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       List<RegVo> roseClick = wineService.roseClick(rose_click, pds);
       ModelAndView mv = new ModelAndView();
       mv.addObject("roseClick",roseClick);
       mv.addObject("pds", pds);
       mv.setViewName("/wine/winelist");
       return mv;
    }
    
 // 와인버튼기타검색 (영태)
    @RequestMapping("/Other_Click")
    public ModelAndView otherclick(RegVo vo, String other_click,
    		PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage ) {
       
    	int total  =  wineService.countWineOther();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "6";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "6";
		}
		
	   int w_no  =  vo.getW_no();
		
	   pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
       List<RegVo> otherClick = wineService.otherClick(other_click, pds);
       ModelAndView mv = new ModelAndView();
       mv.addObject("otherClick",otherClick);
       mv.addObject("pds", pds);
       mv.setViewName("/wine/winelist");
       return mv;
    }
   
    
}

package com.green.cs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.cs.service.CsService;
import com.green.cs.vo.CsVo;

@Controller
public class CsController {
	
	@Autowired
	private CsService csService;
	
	@RequestMapping("/StoreCsInquiryForm")
	public ModelAndView storeCsInquiryForm(CsVo vo) {
		 
		int s_no  =  vo.getS_no();
		int scs_idx = vo.getScs_idx();
		List<CsVo> storecsList  =  csService.getstorecsList(vo);
		ModelAndView  mv  = new ModelAndView();  
		mv.setViewName("cs/storecsinquiry");
		mv.addObject("scs_idx", scs_idx);
		mv.addObject("s_no", s_no);
		
		return mv;
	}
	
	@RequestMapping("/StoreCsInquiry")
	public ModelAndView storeCsInquiry(CsVo vo) {
		
		
		
		csService.storeCsInsert(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/StoreCs?s_no=" + vo.getS_no());
		return mv;
	}
	
	
	
	@RequestMapping("/UserCsInquiryForm")
	public ModelAndView userCsInquiryForm(CsVo vo) {
		
		int ucs_idx  =  vo.getUcs_idx();
		int u_no     =  vo.getU_no();
		List<CsVo> usercsList  =  csService.getusercsList(vo); 
		ModelAndView  mv  = new ModelAndView();  
		mv.setViewName("cs/usercsinquiry");
		mv.addObject("ucs_idx", ucs_idx);
		mv.addObject("u_no", u_no);
		return mv;
	}
	
	@RequestMapping("/UserCsInquiry")
	public ModelAndView userCsInquiry(CsVo vo) {
		
		csService.userCsInsert(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/UserCs?u_no=" + vo.getU_no());
		return mv;
	}
	
	//UserCs?u_no=${loginVo.u_no }
	@RequestMapping("/UserCs")
	 public ModelAndView usercs(CsVo vo) {
	
		 int u_no  =  vo.getU_no();
		 
		 List<CsVo> usercsList  =  csService.getusercsList(vo);  
		
		 ModelAndView mv = new ModelAndView();
         mv.setViewName("cs/usercs");
         mv.addObject("usercsList", usercsList );
         mv.addObject("u_no", u_no);
         
         return mv;
		
	}
	@RequestMapping("/CsAllUser")
	public ModelAndView csalluser(CsVo vo)
	{
		List<CsVo> csalluserList  =  csService.getcsalluserList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/adminusercs");
		mv.addObject("csalluserList", csalluserList );
		
		return mv;
		
	}
	
	@RequestMapping("/CsView")
	public ModelAndView csview(CsVo vo)
	{
		List<CsVo> csviewList  =  csService.getcsviewList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/usercsview");
		mv.addObject("csviewList", csviewList );
		
		System.out.println(mv);
		return mv;
		
	}
	
	@RequestMapping("/AdminCsView")
	public ModelAndView admincsview(CsVo vo)
	{
		List<CsVo> admincsviewList  =  csService.getadmincsviewList(vo);  
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cs/adminusercsview");
		mv.addObject("admincsviewList", admincsviewList );
		
		System.out.println(mv);
		return mv;
		
	}
	
	
	@RequestMapping("/CsAllStore")
	public ModelAndView csAllStore(CsVo vo) {
		
		List<CsVo> csAllStoreList  =  csService.getcsAllStoreList(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("cs/adminstorecs");
		mv.addObject("allStore", csAllStoreList);
		return mv;
	}
	
	
	@RequestMapping("/StoreCs")
	public ModelAndView storecs(CsVo vo) {
		
		int s_no  =  vo.getS_no();
		
		List<CsVo> storecsList  =  csService.getstorecsList(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("cs/storecs");
		mv.addObject("storecsList", storecsList);
		mv.addObject("s_no", s_no);
		return mv; 
	}
	
}

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
		mv.setViewName("redirect:/StoreCs?u_no=" + vo.getU_no());
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
         
         System.out.println(mv);
         return mv;
		
	}
	
}

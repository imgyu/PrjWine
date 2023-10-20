package com.green.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.admin.service.AdminService;
import com.green.board.vo.BoardVo;
import com.green.pds.vo.PdsPagingVo;
import com.green.store.vo.RegVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/AdminUserList")
	public ModelAndView userList(UserVo vo, PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage
			) {
		
		int total  =  adminService.countUser();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "8";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "8";
		}
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		int u_no  =  vo.getU_no();
		List<UserVo> userList2 =  adminService.userList2(pds);
		ModelAndView mv  =  new ModelAndView();
		mv.addObject("pds", pds);
		mv.setViewName("admin/userlist");
		mv.addObject("u_no", u_no);
		mv.addObject("userList", userList2);
		return mv;
	}
	
	@RequestMapping("/AdminStoreList")
	public ModelAndView storeList(StoreVo vo, PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage
			) {
		
		int total  =  adminService.countStore();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "7";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "7";
		}
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		
		int s_no  =  vo.getS_no();
		List<StoreVo> storeList2  =  adminService.storeList2(pds);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/storelist");
		mv.addObject("storeList", storeList2);
		mv.addObject("pds", pds);
		mv.addObject("s_no", s_no);
		return mv;
	}
	@ResponseBody
	@RequestMapping("/AdminStoreListDelete")
	public int storeListDelete(@RequestParam(value = "valueArr[]") String[] valueArr, StoreVo vo) {
		
		for(String value : valueArr) {
			vo.setS_no(Integer.parseInt(value));
			adminService.deleteStoreList(vo);
		}
		
		return 1;
	}
	// 7개
	@RequestMapping("/AdminTastingList")
	public ModelAndView tastingList(TastingVo vo, PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage
			) {
		
		int total  =  adminService.countTasting();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "7";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "7";
		}
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		
		int t_idx  =  vo.getT_idx();
		
		List<TastingVo> tastingList2  =  adminService.tastingList2(pds);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/admintastinglist");
		mv.addObject("tast", tastingList2);
		mv.addObject("pds", pds);
		mv.addObject("t_idx", t_idx);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminTastingListDelete")
	public int tastingListDelete(@RequestParam(value = "valueArr[]") String[] valueArr, TastingVo vo) {
		
		for(String value : valueArr) {
			vo.setT_idx(Integer.parseInt(value));
			adminService.deleteTastingList(vo);
		}
		return 1;
	}
	
	@RequestMapping("/AdminBoardList")
	public ModelAndView boardList(BoardVo vo,  PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage
			) {
		
		int total  =  adminService.countBoard();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "7";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "7";
		}
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		
		int b_idx  =  vo.getB_idx();
		
		List<BoardVo> boardList2  =  adminService.boardList2(pds);
		
		System.out.println(b_idx);
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/boardlist");
		mv.addObject("board", boardList2);
		mv.addObject("b_idx", b_idx);
		mv.addObject("pds", pds);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminBoardListDelete")
	public int boardListDelete(@RequestParam(value = "valueArr[]") String[] valueArr, BoardVo vo) {
		
		for(String value : valueArr) {
			vo.setB_idx(Integer.parseInt(value));
			adminService.deleteBoardList(vo);
		}
		
		return 1;
	}
	
	@ResponseBody
	@RequestMapping("/AdminUserListDelete")
	public int  userListDelete(@RequestParam(value = "valueArr[]") String [] valueArr, UserVo vo) {
		
		for(String value : valueArr) {
			vo.setU_no(Integer.parseInt(value));
			adminService.deleteUserList(vo);
		}
		
		return 1;
	}
	
	@RequestMapping("/AdminWineInsertForm")
	public String wineInsertForm() {
		
		return "admin/wineinsert";
	}
	
	
	@RequestMapping("/AdminWineInsert")
	public ModelAndView wineInsert(WineVo vo) {
		
		adminService.WineInsert(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("redirect:/AdminWineInsertForm?s_no=99");
		return mv;
	}
	
	@RequestMapping("/AdminWineList")
	public ModelAndView wineList(WineVo vo,  PdsPagingVo pds,
			@RequestParam(value="nowPage", required = false)String nowPage,
			@RequestParam(value="cntPerPage", required = false)String cntPerPage
			) {
		
		int total  =  adminService.countWine();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "5";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		int w_no  =  vo.getW_no();
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		List<WineVo> wineList  =  adminService.wineList(pds); 
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/winelist");
		mv.addObject("Allwine", wineList);
		mv.addObject("pds", pds);
		mv.addObject("w_no", w_no);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/AdminWineListDelete")
    public int  wineListDelete(@RequestParam(value = "valueArr[]") String [] valueArr, WineVo vo) {
		
		for(String value : valueArr) {
			vo.setW_no(Integer.parseInt(value));
			adminService.deleteWineList(vo);
		}
		
		return 1;
	} 
	
	 @RequestMapping("/AdWineSearch")
	 public ModelAndView adWineSearch(WineVo vo,  PdsPagingVo pds,
				@RequestParam(value="nowPage", required = false)String nowPage,
				@RequestParam(value="cntPerPage", required = false)String cntPerPage,
				@RequestParam("searchKeyword") String searchKeyword,
				@RequestParam("searchOption") String searchOption,
				@RequestParam("kindOption") String kindOption ){
		 
	 	int total  =  adminService.countWine();
		if (nowPage == null && cntPerPage == null ) {
			nowPage  = "1";
			cntPerPage = "5";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		int w_no  =  vo.getW_no();
		pds = new PdsPagingVo(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
	 
		List<WineVo> searchList = adminService.searchList(pds, searchKeyword, searchOption, kindOption);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("admin/winelist2");
		mv.addObject("Allwine", searchList);
		mv.addObject("pds", pds);
		mv.addObject("w_no", w_no);
		return mv;
		 
	}
}

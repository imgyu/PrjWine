package com.green.admin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.green.admin.service.AdminService;
import com.green.board.vo.BoardVo;
import com.green.store.vo.StoreVo;
import com.green.store.vo.WineVo;
import com.green.tasting.vo.TastingVo;
import com.green.user.vo.UserVo;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	
	@RequestMapping("/AdminUserList")
	public ModelAndView userList(UserVo vo) {
		
		int u_no  =  vo.getU_no();
		List<UserVo> userList  =  adminService.userList(vo);  
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/userlist");
		mv.addObject("userList", userList);
		mv.addObject("u_no", u_no);
		return mv;
	}
	
	@RequestMapping("/AdminStoreList")
	public ModelAndView storeList(StoreVo vo) {
		
		int s_no  =  vo.getS_no();
		List<StoreVo> storeList  =  adminService.storeList(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/storelist");
		mv.addObject("storeList", storeList);
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
	
	@RequestMapping("/AdminTastingList")
	public ModelAndView tastingList(TastingVo vo) {
		
		int t_idx  =  vo.getT_idx();
		
		List<TastingVo> tastingList  =  adminService.tastingList(vo);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/admintastinglist");
		mv.addObject("tast", tastingList);
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
	public ModelAndView boardList(BoardVo vo) {
		
		int b_idx  =  vo.getB_idx();
		List<BoardVo> boardList  =  adminService.boardList(vo);
		
		System.out.println(boardList);
		System.out.println(b_idx);
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/boardlist");
		mv.addObject("board", boardList);
		mv.addObject("b_idx", b_idx);
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
	
	@RequestMapping("/AdminWineInsert")
	public ModelAndView wineInsert(@RequestParam  HashMap<String, Object> map, HttpServletRequest   request) {
		
		adminService.wineInsert(map, request);
		
		ModelAndView mv  =  new ModelAndView();
		mv.setViewName("admin/wineinsert");
		return mv;
	}
	
	
}

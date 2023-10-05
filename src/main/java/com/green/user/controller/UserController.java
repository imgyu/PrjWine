package com.green.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;
import com.green.user.vo.UserVo;

@Controller
public class UserController {
	@Autowired
	private  UserService   userService;
	//로그인화면
	@RequestMapping("/UserLoginForm")
	public String userloginform() {
		return  "/login/userloginform";
	}
	//로그인후
	@RequestMapping("/UserLogin")
	public String userlogin() {
		return "/home";
	}
	//가입화면
	@RequestMapping("/UserJoinForm")
	public String userjoinform() {
		return "/login/userjoinform";
	}
	//가입후
	@RequestMapping("/UserJoin")
	public String userjoin( UserVo  vo ) {
		userService.insertUser(vo);
		return "/login/userloginform";
	}
	//유저정보 확인페이지 이동
	@RequestMapping("/UserInfo")
	public String userinfo() {
		return "/user/userinfo";
	}
	//유저정보 업데이트 페이지 이동
	@RequestMapping("/UserUpdateForm")
	public String userupdateform() {
		return "/user/userupdateform";
	}
	//유저장바구니
	@RequestMapping("/UserCart")
	public String usercart() {
		return "/user/cart";
	}
}

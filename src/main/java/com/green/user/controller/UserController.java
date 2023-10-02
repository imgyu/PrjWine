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
		return  "/user/userform";
	}
	//로그인후
	@RequestMapping("/UserLogin")
	public String userlogin() {
		return "/home";
	}
	//가입화면
	@RequestMapping("/UserJoinForm")
	public String userjoinform() {
		return "/user/userjoinform";
	}
	//가입후
	@RequestMapping("/UserJoin")
	public String userjoin( UserVo  vo ) {
		userService.insertUser(vo);
		return "/user/userform";
	}
}

package com.green.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;

@Controller
public class StoreController {
//	@Autowired
//	private  StoreService   storeService;
	
	@RequestMapping("/StoreLoginForm")
	public String storeloginform() {
		return "/store/storeform";
	}
	
	@RequestMapping("/StoreLogin")
	public String storelogin() {
		return "/home";
	}
	
	@RequestMapping("/StoreJoinForm")
	public String storejoinform() {
		return "/store/storejoinform";
	}
		
	@RequestMapping("/StoreJoin")
	public String storejoin() {
		return "/user/sotoreform";
	}
}

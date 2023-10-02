package com.green.wine.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.user.service.UserService;

@Controller
public class WineController {
//	@Autowired
//	private  StoreService   storeService;
	
	@RequestMapping("/WineList")
	public String winelist() {
		return "/wine/winelist";
	}
	
	@RequestMapping("/WineInfo")
	public String wineinfo() {
		return "/wine/wineinfo";
	}

	
}

package com.green.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {
//	@Autowired
//	private  StoreService   storeService;
	
	@RequestMapping("/StoreList")
	public String storelist() {
		return "/store/storelist";
	}
	
	//매장와인목록
	@RequestMapping("/StoreWineManage")
	public String storewinemanage() {
		return "/store/storewinemanage";
	}
	//매장와인등록
	@RequestMapping("/StoreWineRegister")
	public String storewineregister() {
		return "/store/storewineregister";
	}
	
	//매장 정보 확인 페이지 이동
	@RequestMapping("/StoreCheck")
	public String storecheck() {
		return "/store/storecheck";
	}
	
	//매장 정보 수정 페이지 이동
	@RequestMapping("/StoreCheckUpdate")
	public String storecheckupdate() {
		return "/store/storeupdateform";
	}
}

package com.green.cs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.green.cs.service.CsService;

@Controller
public class CsController {
	
	@Autowired
	private CsService csService;
	
}

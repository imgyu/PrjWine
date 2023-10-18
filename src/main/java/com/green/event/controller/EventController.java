package com.green.event.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.green.event.service.EventService;
import com.green.event.vo.EventVo;

@Controller
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping("/EventList")
	public ModelAndView eventlist(EventVo vo){
		
		List<EventVo> eventList = eventService.getEventList(vo); 
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("/event/eventlist");
		mv.addObject("eventList", eventList);
		return  mv;
	}
	
	@RequestMapping("/EventInsertForm")
	public String storejoinform() {
		return "/event/eventinsertform";
	}
	
	@RequestMapping("/EventInsert")
	public ModelAndView eventinsert(
			@RequestParam  HashMap<String, Object> map,
			HttpServletRequest   request){
		
		eventService.insertEvent(map, request);
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("/event/eventlist");
		mv.addObject("map", map);
		return  mv;
	}
}

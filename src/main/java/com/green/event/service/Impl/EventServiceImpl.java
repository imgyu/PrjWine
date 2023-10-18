package com.green.event.service.Impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.event.dao.EventDao;
import com.green.event.service.EventService;
import com.green.event.vo.EventVo;


@Service("eventService")
public class EventServiceImpl implements EventService{
	@Autowired
	private EventDao eventDao;
	
	@Override
	public List<EventVo> getEventList(EventVo vo) {
		List<EventVo> eventList = eventDao.getEventList(vo);
		return eventList;
	}

	@Override
	public void insertEvent(HashMap<String, Object> map, HttpServletRequest request) {
		ImgFile1.save( map, request );
		System.out.println(map);
	    eventDao.insertEvent( map );
	}

}

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
	    eventDao.insertEvent( map );
	}

	@Override
	public List<EventVo> getEventList2(EventVo vo) {
		List<EventVo> eventList = eventDao.getEventList2(vo);
		return eventList;
	}

	@Override
	public void deleteEvent(EventVo vo) {
		eventDao.deleteEvent(vo);
	}

	@Override
	public List<EventVo> getEventListEnd(EventVo vo) {
		List<EventVo> eventList = eventDao.getEventListEnd(vo);
		return eventList;
	}

}

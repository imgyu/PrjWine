package com.green.event.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.green.event.vo.EventVo;

public interface EventService {

	List<EventVo> getEventList(EventVo vo);

	void insertEvent(HashMap<String, Object> map, HttpServletRequest request);

	List<EventVo> getEventList2(EventVo vo);

	void deleteEvent(EventVo vo);

	List<EventVo> getEventListEnd(EventVo vo);

}

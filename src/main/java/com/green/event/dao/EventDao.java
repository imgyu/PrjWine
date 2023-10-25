package com.green.event.dao;

import java.util.HashMap;
import java.util.List;

import com.green.event.vo.EventVo;

public interface EventDao {

	List<EventVo> getEventList(EventVo vo);

	void insertEvent(HashMap<String, Object> map);

	List<EventVo> getEventList2(EventVo vo);

	void deleteEvent(EventVo vo);

	List<EventVo> getEventListEnd(EventVo vo);

}

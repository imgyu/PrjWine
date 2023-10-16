package com.green.board.service;

import java.util.List;

import com.green.board.vo.BoardVo;

public interface BoardService {

	List<BoardVo> getBoardList(BoardVo vo2);

	void insertBoard(BoardVo vo);

	List<BoardVo> getBoardCont(BoardVo vo);

	void deleteBoard(BoardVo vo);

}

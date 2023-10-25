package com.green.board.dao;

import java.util.List;

import com.green.board.vo.BoardVo;

public interface BoardDao {

	List<BoardVo> getBoardList(BoardVo vo2);

	void insertBoard(BoardVo vo);

	List<BoardVo> getBoardCont(BoardVo vo);

	void deleteBoard(BoardVo vo);

	void updateBoard(BoardVo vo);

}

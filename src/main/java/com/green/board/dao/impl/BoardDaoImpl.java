package com.green.board.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.board.dao.BoardDao;
import com.green.board.vo.BoardVo;

@Repository("boardDao")
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BoardVo> getBoardList(BoardVo vo2) {
		List<BoardVo> BoardList = sqlSession.selectList("Board.BoardList",vo2);
	    return BoardList;
	}

	@Override
	public void insertBoard(BoardVo vo) {
		sqlSession.insert("Board.BoardInsert", vo);
	}

	@Override
	public List<BoardVo> getBoardCont(BoardVo vo) {
		List<BoardVo> boardCont = sqlSession.selectList("Board.BoardCont", vo);
		return boardCont;
	}

	@Override
	public void deleteBoard(BoardVo vo) {
		sqlSession.delete("Board.BoardDelete", vo);
	}

	@Override
	public void updateBoard(BoardVo vo) {
		sqlSession.update("Board.BoardUpdate", vo);
	}

}

package com.green.board.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.board.dao.BoardDao;
import com.green.board.service.BoardService;
import com.green.board.vo.BoardVo;
import com.green.store.vo.StoreVo;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDao boardDao;

	@Override
	public List<BoardVo> getBoardList(BoardVo vo2) {
		List<BoardVo> boardList = boardDao.getBoardList( vo2 );
		return boardList;
	}

	@Override
	public void insertBoard(BoardVo vo) {
		boardDao.insertBoard( vo  );
	}

	@Override
	public List<BoardVo> getBoardCont(BoardVo vo) {
		List<BoardVo> boardCont = boardDao.getBoardCont(vo);
		return boardCont;
	}

	@Override
	public void deleteBoard(BoardVo vo) {
		boardDao.deleteBoard( vo );
	}

	@Override
	public void updateBoard(BoardVo vo) {
		boardDao.updateBoard(vo);
		
	}


}

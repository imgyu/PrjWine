package com.green.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.green.board.service.BoardService;
import com.green.board.vo.BoardVo;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/BoardWriteForm")
	public ModelAndView boardWriteForm(BoardVo vo) {
		
		ModelAndView  mv  = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("board/boardwrite");
		return  mv;
	}
	@RequestMapping("/BoardWrite")
	public ModelAndView boardWrite(BoardVo vo) {
		
		boardService.insertBoard( vo );
		
		ModelAndView  mv  = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("redirect:/StoreInfo?s_no="+ vo.getS_no());
		return mv;
	}
	@RequestMapping("/BoardCont")
	public ModelAndView boardCont(BoardVo vo) {
		List<BoardVo> boardCont = boardService.getBoardCont(vo);
		
		ModelAndView  mv  = new ModelAndView();
		mv.addObject("boardCont", boardCont);
		mv.setViewName("board/boardcont");
		return  mv;
	}
	
	@RequestMapping("/BoardDelete")
	public ModelAndView boardDelete(BoardVo vo) {
		boardService.deleteBoard( vo );
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/StoreInfo?s_no="+ vo.getS_no());
		return  mv;
	}
	@RequestMapping("/BoardContUpdateForm")
	public ModelAndView boardContUpdateForm(BoardVo vo) {
		
		List<BoardVo> boardCont = boardService.getBoardCont(vo);
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("/board/boardcontupdate");
		mv.addObject("boardCont",boardCont);
		return  mv;
	}
	@RequestMapping("/BoardContUpdate")
	public ModelAndView boardContUpdate(BoardVo vo) {
		System.out.println("보드업데이트안 vo"+vo);
		boardService.updateBoard( vo );
		
		ModelAndView  mv  = new ModelAndView();
		mv.setViewName("redirect:/BoardCont?s_no=" + vo.getS_no() + "&b_idx=" + vo.getB_idx());
		return  mv;
	}
	
}

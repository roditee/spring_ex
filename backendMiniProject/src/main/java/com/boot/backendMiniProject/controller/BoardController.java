package com.boot.backendMiniProject.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.boot.backendMiniProject.model.BoardVO;
import com.boot.backendMiniProject.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService service;
	
	@RequestMapping("/boardDetailView")
	public String boardDetailView() {
		return "/boardDetailView";
	}
		
	@RequestMapping("/board/listAllBoard")
	public String listAllBoard(Model model) {
		ArrayList<BoardVO> boardList = service.listAllBoard();
		model.addAttribute("boardList", boardList);		
		return "review/boardListView";
	}
	
	@RequestMapping("/board/newBoardForm/{boardNo}")
	public String newBoardForm(@PathVariable String boardNo, 
			Model model) {
		
		BoardVO board = service.detailViewBoard(boardNo);
		model.addAttribute("board", board);
		
		return "review/newBoardForm";
	}
	
	@RequestMapping("/board/insertBoard")
	public String insertBoard(BoardVO board) {
		service.insertBoard(board);
		return "redirect:./listAllBoard";
	}
	
	@RequestMapping("/board/detailViewBoard/{boardNo}")
	public String detailViewBoard(@PathVariable String boardNo, Model model) {
		BoardVO board = service.detailViewBoard(boardNo);
		model.addAttribute("board", board);
		
		return "board/boardDetailView";
	}
	
	@RequestMapping("/board/updateBoardForm/{boardNo}")
	public String updateBoardForm(@PathVariable String boardNo, Model model) {

		BoardVO board = service.detailViewBoard(boardNo);
		model.addAttribute("board", board);
		return "board/updateBoardForm";
	}
	
	@RequestMapping("/board/updateBoard")
	public String detailViewBoard(BoardVO board) {
		service.updateBoard(board);		
		return "redirect:./listAllBoard";
	}
	
	@RequestMapping("/board/deleteBoard/{boardNo}")
	public String deleteBoard(@PathVariable String boardNo) {
		service.deleteBoard(boardNo);
		return "redirect:../listAllBoard";
	}
	
	@ResponseBody
	@RequestMapping("board/boardNoCheck")
	public String boardNoCheck(@RequestParam("boardNo") String boardNo) {
		String boardNo_result = service.boardNoCheck(boardNo);
		
		String result = "use";
		if(boardNo_result != null)
			result = "no_use";
		
		return result;
	}
	
	@RequestMapping("/board/boardSearchForm")
	public String boardSearchForm() {
		return "board/boardSearchForm";
	}
	
	@ResponseBody
	@RequestMapping("/board/boardSearch")
	public ArrayList<BoardVO> boardSearch(@RequestParam HashMap<String, Object> param, 
																				Model model){
		System.out.println("a");
		ArrayList<BoardVO> boardList = service.boardSearch(param);
		model.addAttribute("boardList", boardList);
		
		return boardList;
	}
	
		@RequestMapping("/board/boardSearchForm2")
		public String boardSearchForm2() {
			return "board/boardSearchForm2";
		}
		
		@RequestMapping("/board/boardSearch2")
		public String boardSearch2(@RequestParam HashMap<String, Object> param, 
																		Model model){
			ArrayList<BoardVO> boardList = service.boardSearch(param);
			model.addAttribute("boardList", boardList);
		
			return "board/boardSearchResultView";
		}		
			@RequestMapping("/board/boardSearchForm3")
			public String boardSearchForm3() {
				return "board/boardSearchForm3";
	}
}

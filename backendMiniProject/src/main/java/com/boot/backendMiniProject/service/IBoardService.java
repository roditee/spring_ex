package com.boot.backendMiniProject.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.boot.backendMiniProject.model.BoardVO;

public interface IBoardService {
	ArrayList<BoardVO> listAllBoard();
	void insertBoard(BoardVO boardVo);
	void updateBoard(BoardVO boardVo);
	void deleteBoard(String boardVo); 	
	BoardVO detailViewBoard(String boardNo);
	String boardNoCheck(String boardNo);
	ArrayList<BoardVO> boardSearch(HashMap<String, Object> map); 
}

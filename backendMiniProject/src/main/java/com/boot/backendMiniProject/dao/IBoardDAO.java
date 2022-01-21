package com.boot.backendMiniProject.dao;

import java.util.ArrayList;
import java.util.HashMap;
import com.boot.backendMiniProject.model.BoardVO;

public interface IBoardDAO {
	
	ArrayList<BoardVO> listAllBoard();
	void insertBoard(BoardVO boardVo);
	void updateBoard(BoardVO boardVo);
	void deleteBoard(String boardVo); 	
	BoardVO detailViewBoard(String boardNo);
	String boardNoCheck(String boardNo);
	ArrayList<BoardVO> boardSearch(HashMap<String, Object> map);
}

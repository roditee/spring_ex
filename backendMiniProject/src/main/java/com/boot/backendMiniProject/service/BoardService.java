package com.boot.backendMiniProject.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.boot.backendMiniProject.dao.IBoardDAO;
import com.boot.backendMiniProject.model.BoardVO;

@Service
public class BoardService implements IBoardService{

	@Autowired
	@Qualifier("IBoardDAO")
	IBoardDAO dao;
	
	@Override
	public ArrayList<BoardVO> listAllBoard() {
		return dao.listAllBoard();
	}

	@Override
	public void insertBoard(BoardVO boardVo) {
		dao.insertBoard(boardVo);
		
	}

	@Override
	public void updateBoard(BoardVO boardVo) {
		// TODO Auto-generated method stub
		dao.updateBoard(boardVo);
		
	}

	@Override
	public void deleteBoard(String boardVo) {
		// TODO Auto-generated method stub
		dao.deleteBoard(boardVo);
	}

	@Override
	public BoardVO detailViewBoard(String boardNo) {
		return dao.detailViewBoard(boardNo);
	}

	@Override
	public String boardNoCheck(String boardNo) {
		return dao.boardNoCheck(boardNo);
	}

	@Override
	public ArrayList<BoardVO> boardSearch(HashMap<String, Object> map) {
		return dao.boardSearch(map);
	}

}

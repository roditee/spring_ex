package com.multi.book;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
public class BookService implements IBookService {
	
	@Autowired
	@Qualifier("IBookDAO")
	IBookDAO dao;
	
	@Override
	public ArrayList<BookVO> listAllBook() {
		// TODO Auto-generated method stub
		return dao.listAllBook();
	}

	@Override
	public BookVO detailViewBook(String bookNo) {
		// TODO Auto-generated method stub
		return dao.detailViewBook(bookNo);
	}

	@Override
	public void insertBook(BookVO bookVo) {
		// TODO Auto-generated method stub
		dao.insertBook(bookVo);
	}

	@Override
	public void updateBook(BookVO bookVo) {
		// TODO Auto-generated method stub
		dao.updateBook(bookVo);
	}

	@Override
	public void deleteBook(String bookNo) {
		// TODO Auto-generated method stub
		dao.deleteBook(bookNo);
	}
}

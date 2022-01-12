package com.multi.book;

import java.util.ArrayList;
import java.util.HashMap;

public interface IBookDAO {
	// 반환형 메소드명();
	ArrayList<BookVO> listAllBook();   			// 전체 도서 정보 조회
	BookVO detailViewBook(String bookNo);	// 상세 도서 정보 조회
	void insertBook(BookVO bookVo);				// 도서 정보 등록
	void updateBook(BookVO bookVo);			// 도서 정보 수정
	void deleteBook(String bookNo);				// 도서 정보 삭제
}

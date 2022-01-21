package com.boot.backendMiniProject.model;

public class BoardVO {
	private int boardNo;
	private String memId;
	private String memMbti;
	private String boardTitle;
	private String boardContent;
	private String boardImg;
	
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemMbti() {
		return memMbti;
	}
	public void setMemMbti(String memMbti) {
		this.memMbti = memMbti;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public String getBoardImg() {
		return boardImg;
	}
	public void setBoardImg(String boardImg) {
		this.boardImg = boardImg;
	}
	
	
}

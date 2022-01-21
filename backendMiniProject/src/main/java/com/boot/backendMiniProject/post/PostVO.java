package com.boot.backendMiniProject.post;

public class PostVO {
	private String postNo;
	private String memId;
	private String memMbti;
	private String postTitle;
	private String postContent;
	private String postImg;
	
	public String getPostNo() {
		return postNo;
	}
	public void setPostNo(String postNo) {
		this.postNo = postNo;
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
	public String getPostTitle() {
		return postTitle;
	}
	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public String getPostImg() {
		return postImg;
	}
	public void setPostImg(String postImg) {
		this.postImg = postImg;
	}
}

package com.boot.backendMiniProject.post;

import java.util.ArrayList;
import java.util.HashMap;

public interface IPostDAO {
	ArrayList<PostVO> listAllPost();
	void insertPost(PostVO postVo);
	void updatePost(PostVO postVo);
	void deletePost(String postVo); 	
	PostVO detailViewPost(String postNo);
	String postNoCheck(String postNo);
	ArrayList<PostVO> postSearch(HashMap<String, Object> map); 
}

package com.boot.backendMiniProject.post;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;



@Service
public class PostService implements IPostService {
	@Autowired
	@Qualifier("IPostDAO")
	IPostDAO dao;

	@Override
	public ArrayList<PostVO> listAllPost() {		
		return dao.listAllPost();
	}

	@Override
	public void insertPost(PostVO postVo) {
		dao.insertPost(postVo);
	}

	@Override
	public void updatePost(PostVO postVo) {
		dao.updatePost(postVo);
	}

	@Override
	public void deletePost(String postNo) {
		dao.deletePost(postNo);
	}

	@Override
	public PostVO detailViewPost(String postNo) {		
		return dao.detailViewPost(postNo);
	}
	
	@Override
	public String postNoCheck(String postNo) {
		return dao.postNoCheck(postNo);
	}

	@Override
	public ArrayList<PostVO> postSearch(HashMap<String, Object> map){
		return dao.postSearch(map);
	}
}

package com.boot.backendMiniProject.post;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PostController {
	
	@Autowired
	PostService service;
	
	@RequestMapping("/postDetailView")
	public String posttDetailView() {
		return "/posttDetailView";
	}
		
	@RequestMapping("/post/listAllPost")
	public String listAllPost(Model model) {
		ArrayList<PostVO> postList = service.listAllPost();
		model.addAttribute("postList", postList);		
		return "post/postListView";
	}
	
	@RequestMapping("/post/newPostForm")
	public String newPostForm() {
		return "post/newPostForm";
	}
	
	@RequestMapping("/post/insertPost")
	public String insertPost(PostVO post) {
		service.insertPost(post);
		return "redirect:./listAllPost";
	}
	
	@RequestMapping("/post/detailViewPost/{postNo}")
	public String detailViewPost(@PathVariable String postNo, Model model) {
		PostVO post = service.detailViewPost(postNo);
		model.addAttribute("post", post);
		
		return "post/postDetailView";
	}
	
	@RequestMapping("/post/updatePostForm/{postNo}")
	public String updatePostForm(@PathVariable String postNo, Model model) {

		PostVO post = service.detailViewPost(postNo);
		model.addAttribute("post", post);
		return "post/updatePostForm";
	}
	
	@RequestMapping("/post/updatePost")
	public String detailViewPost(PostVO post) {
		service.updatePost(post);		
		return "redirect:./listAllPost";
	}
	
	@RequestMapping("/post/deletePost/{postNo}")
	public String deletePost(@PathVariable String postNo) {
		service.deletePost(postNo);
		return "redirect:../listAllPost";
	}
	
	@ResponseBody
	@RequestMapping("post/postNoCheck")
	public String postNoCheck(@RequestParam("postNo") String postNo) {
		String postNo_result = service.postNoCheck(postNo);
		
		String result = "use";
		if(postNo_result != null)
			result = "no_use";
		
		return result;
	}
	
	@RequestMapping("/post/postSearchForm")
	public String postSearchForm() {
		return "post/postSearchForm";
	}
	
	@ResponseBody
	@RequestMapping("/post/postSearch")
	public ArrayList<PostVO> postSearch(@RequestParam HashMap<String, Object> param, 
																				Model model){
		System.out.println("a");
		ArrayList<PostVO> postList = service.postSearch(param);
		model.addAttribute("postList", postList);
		
		return postList;
	}
	
		@RequestMapping("/post/postSearchForm2")
		public String postSearchForm2() {
			return "post/postSearchForm2";
		}
		
		@RequestMapping("/post/postSearch2")
		public String postSearch2(@RequestParam HashMap<String, Object> param, 
																		Model model){
			ArrayList<PostVO> postList = service.postSearch(param);
			model.addAttribute("postList", postList);
		
			return "post/postSearchResultView";
		}		
			@RequestMapping("/post/postSearchForm3")
			public String postSearchForm3() {
				return "post/postSearchForm3";
	}
}

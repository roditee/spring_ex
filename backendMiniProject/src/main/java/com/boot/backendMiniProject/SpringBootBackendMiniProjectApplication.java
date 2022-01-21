package com.boot.backendMiniProject;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.boot.backendMiniProject.controller.BoardController;
import com.boot.backendMiniProject.controller.CartController;
import com.boot.backendMiniProject.controller.MainController;
import com.boot.backendMiniProject.controller.MemberController;
import com.boot.backendMiniProject.controller.ProductController;
import com.boot.backendMiniProject.dao.IBoardDAO;
import com.boot.backendMiniProject.dao.ICartDAO;
import com.boot.backendMiniProject.dao.IMemberDAO;
import com.boot.backendMiniProject.dao.IProductDAO;
import com.boot.backendMiniProject.post.IPostDAO;
import com.boot.backendMiniProject.post.PostController;

@SpringBootApplication
@ComponentScan(basePackageClasses = MainController.class)
@ComponentScan(basePackageClasses = MemberController.class)
@ComponentScan(basePackageClasses = ProductController.class)
@ComponentScan(basePackageClasses = CartController.class)
@ComponentScan(basePackageClasses = BoardController.class)
@ComponentScan(basePackageClasses = PostController.class)
@MapperScan(basePackageClasses = IMemberDAO.class)
@MapperScan(basePackageClasses = ICartDAO.class)
@MapperScan(basePackageClasses = IProductDAO.class)	
@MapperScan(basePackageClasses = IPostDAO.class)
@MapperScan(basePackageClasses = IBoardDAO.class)
public class SpringBootBackendMiniProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootBackendMiniProjectApplication.class, args);
	}

}
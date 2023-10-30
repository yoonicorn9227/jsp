package com.java.www;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/JJJ")
public class JavaAction extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//웹브라우저에서 url입력시 모두 doGet으로 들어옴,form 태그 method ="get"
	
		System.out.println("서블릿 doGet메소드가 호출되었습니다.");
		
		
	
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form 태그 method ="post"
		doGet(request, response);
	}//doPost

}//class

package com.java.www;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		//링크로 연결된 파일이름 알아내기
		String uri = request.getRequestURI();
		String upath = request.getContextPath();
		String fileName=uri.substring(upath.length());
		System.out.println("Controller에서 확인한 주소 : " +fileName);
		//이동주소
		String url="";
		
		if(fileName.equals("/login.do")) {
			url="login.jsp";
			//response.sendRedirect("login.jsp"); // response.sendRedirect 단점 : request,response 값 리셋하고 리턴 | 파일을 보내지 않는 경우 사용
		} else if(fileName.equals("/write.do")) {
			url="write.jsp";
		} else if(fileName.equals("/mwrite.do")) {
			url="mwrite.jsp";
		} else if(fileName.equals("/doLogin.do")) {
			url="Do_login";
		}//if
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	
	}// doAction


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}// doPost

}// SerVlet(FrontController)

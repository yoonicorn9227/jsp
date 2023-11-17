package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.Ser_BSelectOne;
import com.java.www.service.Ser_Blist;
import com.java.www.service.Ser_MemDologin;
import com.java.www.service.Service;

@WebServlet("*.do")
public class FFFController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("FFFCrtl - doAction");
		request.setCharacterEncoding("UTF-8");

		// 파일이름 찾기
		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String fileName = uri.substring(cPath.length());

		Service service = null;
		String url = null;
		switch (fileName) {
		case "/index.do":
			response.sendRedirect("index.jsp");
			break;
		case "/mwrite.do":
			response.sendRedirect("mwrite.jsp");
			break;
		case "/login.do":
			response.sendRedirect("login.jsp");
			break;
		case "/logout.do":
			response.sendRedirect("logout.jsp");
			break;
		case "/bInsert.do":
			response.sendRedirect("bInsert.jsp");
			break;
		case "/doLogin.do":
			service = new Ser_MemDologin(); //1.로그인 체크
			service.execute(request, response);
			url = "index.jsp";
			System.out.println("컨트롤러 : index.jsp 호출 : " + url);
			break;
		case "/bList.do":
			service = new Ser_Blist(); //2.게시글 전체가져오기
			service.execute(request, response);
			url = "bList.jsp";
			System.out.println("컨트롤러 : bList.jsp 호출 : " + url);
			break;
		case "/bView.do":
			service = new Ser_BSelectOne(); //2.게시글 1개가져오기
			service.execute(request, response);
			url = "bView.jsp";
			System.out.println("컨트롤러 : bView.jsp 호출 : " + url);
			break;

		}// switch(fileName)

		
		
		
		
		
		// url이 있는 경우
		if (url != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} //

	}// doAction

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("doGet");
		doAction(request, response);
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}// doPost

}

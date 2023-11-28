package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.Service;

@WebServlet("*.do")
public class T2_FController extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("2T_FCtrl - doAction");
		request.setCharacterEncoding("UTF-8");

		// ▼파일이름 찾기
		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String fileName = uri.substring(cPath.length());
		// ▼파일호출 이름
		System.out.println("FCtrl 호출이름 : " + fileName);

		// ▼변수선언
		String url = null;
		Service service = null;

		// ▼경로Switch
		switch (fileName) {
		case "/a_login.do":
			response.sendRedirect("a_login.jsp");
			break;
		}// switch

		// ▼url이 있는 경우
		if (url != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} // if(url있는 경우)

	}// doAction

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}// doPost

}// SerVlet(T2_FController) - 2팀 컨트롤러

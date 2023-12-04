package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.EventService;
import com.java.www.service.Service;

@WebServlet("*.do")
public class FController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Jadin doAction");
		request.setCharacterEncoding("UTF-8");

		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String fileName = uri.substring(cPath.length());
		String url = null;
		Service service = null;
		System.out.println("FCtrl fileName : " + fileName);

		switch (fileName) {
		case "/layout/main.do":
			response.sendRedirect("main.jsp");
			break;
		case "/event/event.do":
			service = new EventService();
			service.execute(request, response);
			url="event.jsp";
			break;
		case "/event/event_view.do":
			service = new EventOneService();
			service.execute(request, response);
			url="event_view.jsp";
			break;

		default:
			System.out.println("페이지 없음");
			break;

		}// switch(스위치)

		if (url != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} // if(url이 있는경우)

	}// doAction

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}// doPost

}// SerVlet

package com.java.www.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IdCheck")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		System.out.println("IdCheck id : " + id);

		// service접근
		IdCheckService idCheckService = new IdCheckService(); // 객체선언
		String result = idCheckService.idCheck(id);

		System.out.println("doAction result : "+result);
		// ajax로 전송 리턴 - 사용가능, 사용불가능
		// response.setContentType("text/html charset=UTF-8");
		PrintWriter writer = response.getWriter(); // html화면에다가 적어 (setContentType 있을경우)
		writer.println(result); // id가 존재하지 않음
		// writer.println("fail"); //id가 존재함

		writer.close();
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

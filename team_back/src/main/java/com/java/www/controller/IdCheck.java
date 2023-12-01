package com.java.www.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.Ser_IdCheck;

/**
 * Servlet implementation class IdCheck
 */
@WebServlet("/IdCheck")
public class IdCheck extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");

		// service
		Ser_IdCheck idCheckService = new Ser_IdCheck();
		// 리턴-사용가능,사용 불가능
		String result = idCheckService.idCheck(id);

		// ajax 전송
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		writer.print(result);
		writer.close();

	}//doAction

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);

	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}//doPost

}//SerVlet(아이디 중복 체크 컨트롤러)

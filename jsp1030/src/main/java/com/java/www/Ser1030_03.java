package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S_03")
public class Ser1030_03 extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("doAction 접근");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();	
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>서블릿 페이지</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>get,post방식페이지</h1>");
		writer.println("전달받은 데이터가 있나요?");
		writer.println("전달받은 데이터 : "+request.getParameter("hid"));
		writer.println("</body>");
		writer.println("</html>");
	
		writer.close();
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 접근");
		doAction(request, response);
	
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 접근");
		doAction(request, response);
	
	}//doPost

}//CLASS

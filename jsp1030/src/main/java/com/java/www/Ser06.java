package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ser06")
public class Ser06 extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8"); //post방식 한글처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<style>");
		writer.println("div{width:600px; height:600px; background:yellow; text-align:center; font-size:70px; border:3px solid black;}");
		writer.println("</style>");
		writer.println("<title></title>");
		writer.println("<script>alert('당신이 입력한 이름 :"+request.getParameter("name")+"');</script>");
		writer.println("</head>");
		writer.println("<body><div>서블릿에서 만든 사각형</div></body>");
		writer.println("</html>");

		writer.close();		
	}//doAction
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request,response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request,response);
	}//doPost

}//CLASS

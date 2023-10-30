package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ser04")
public class Ser04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8"); //post방식 한글처리
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title></title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1></서블릿 페이지></h1>");
		writer.println("<h2>전달받은 id</h2>");
		writer.println("<h2>"+request.getParameter("id")+"</h2>");
		writer.println("<h2>전달받은 pw</h2>");
		writer.println("<h2>"+request.getParameter("pw")+"</h2>");
		writer.println("<h2>전달받은 name</h2>");
		writer.println("<h2>"+request.getParameter("name")+"</h2>");
		writer.println("</body>");
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

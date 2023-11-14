package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Do_update")
public class Do_update extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");

		// 객체선언(dao),(dto)

		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title></title></head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('')");
		writer.println("location.href=''");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");

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

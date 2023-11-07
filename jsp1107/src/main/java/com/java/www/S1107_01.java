package com.java.www;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/S01")
public class S1107_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		
		request.setCharacterEncoding("UTF-8");
		//Servler에서 html 오픈할때
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		HttpSession session = request.getSession();
		//DB 연결해서 성공할경우, 실패할 경우
		
		if(id.equals("admin")&&pw.equals("1111")) {
			session.setAttribute("session_id", id);
			session.setAttribute("session_nicName", "유신스");
			response.sendRedirect("jsp1107_01.jsp");
		
		}else {
			writer.println("<script>");
			writer.println("alert('아이디 또는 패스워드 일치하지 않습니다. 다시 입력해주세요!')");
			writer.println("location href='jsp_login.jsp';");
			writer.println("</script>");
		}//if
		
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

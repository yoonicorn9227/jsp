package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MC")
public class MController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String str_script="";
		if(id.equals("aaa") && pw.equals("1111")) {
			str_script = "alert('로그인 되었습니다.');";
			str_script	+= "location.href='layout/main.html'";
		} else {
			str_script = "alert('아이디 또는 패스워드가 일치하지 않습니다.');";
			str_script += "history.back();";
		} //if
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>form데이터</title></head>");
		writer.println("<script>");
		writer.println(str_script);
		writer.println("</script>");
		writer.println("<body>");
		writer.println("아이디 :" + id);
		writer.println("<br>");
		writer.println("비밀번호 :" + pw);
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
		System.out.println("doAction");
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}//doPost

}//CLASS

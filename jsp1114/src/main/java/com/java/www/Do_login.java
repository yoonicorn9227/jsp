package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

@WebServlet("/Do_login")
public class Do_login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 객체선언(dao),(dto)
		MemberDao mdao = new MemberDao();
		MemberDto mdto= mdao.loginCheck(id,pw);
		
		String msg ="";
		String url ="";
		
		if(mdto!=null) {
			msg="로그인 되었습니다!";
			url="main.jsp";
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
		}else {
			msg="아이디 또는 비밀번호가 일치하지 않습니다. 다시로그인 해주세요!";
			url="login.jsp";
		}//if
		// 페이지 이동
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>로그인 체크</title></head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('"+msg+"');");
		writer.println("location.href='"+url+"';");
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

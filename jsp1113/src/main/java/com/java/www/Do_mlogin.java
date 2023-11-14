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

@WebServlet("/Do_mlogin")
public class Do_mlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		HttpSession session=request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		System.out.println(id);
		System.out.println(pw);
		//객체선언후 참조변수명.메소드명
		MemberDao mdao = new MemberDao();
		mdao.loginCheck(id, pw); //id,pw를 보내서 1개의 회원정보를 받음(from MemberDao). - 있으면 1개정보를 받음 ,없으면 null로 받음
		MemberDto mdto=mdao.loginCheck(id, pw);
		
		
		String msg="";
		String url="";
		if(mdto==null) {
			msg="아이디 또는 패스워드가 일치하지 않습니다. ※다시 로그인 해주세요!";
			url="mlogin.jsp";
		} else {
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_nicName", mdto.getName());
			msg="로그인을 되었습니다!";
			url="index.jsp";
		}//if
		
		//페이지이동(html)
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
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request,response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request,response);
	}//doPost

}//SerVlet

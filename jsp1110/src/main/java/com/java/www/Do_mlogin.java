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
		request.setCharacterEncoding("UTF-8");
		System.out.println("Do_mlogin - doAction");
		HttpSession session = request.getSession();
		
		String uid = request.getParameter("id"); //DAO로 넘긴다 : 보안&유지보수 용이 측면
		String upw = request.getParameter("pw"); //DAO로 넘긴다 : 보안&유지보수 용이 측면
		//객체선언후 메소드 호출
		MemberDao mdao = new MemberDao();
		MemberDto mdto=mdao.mloginCheck(uid, upw);
		
		String msg = "";
		String url = "";
		if(mdto==null) {
			msg="아이디 또는 패스워드가 일치 하지 않습니다. 다시 로그인 해주세요.";
			url ="mlogin.jsp";
		}else {
			session.setAttribute("session_id", uid);
			session.setAttribute("session_name", mdto.getName());
			msg="로그인 되었습니다.";
			url ="mindex.jsp";
		}//if
		
		//html 페이지
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>로그인체크</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('"+msg+"')");
		writer.println("location.href='"+url+"'");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
		
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

}//CLASS SERVLET(Do_mlogin)

package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.MemberDao;

/**
 * Servlet implementation class Do_mupdate
 */
@WebServlet("/Do_mupdate")
public class Do_mupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Do_mupdate doAction");
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobby");
		String hobby=null;
		for(int i=0;i<hobbys.length;i++) {
			if(i==0) hobby=hobbys[i];
			else hobby+=","+hobbys[i];
		}//for
		
		MemberDao mdao = new MemberDao();
		//1명의 회원정보수정 메소드 호출
		int result = mdao.memberUpdate(id,phone,gender,hobby);
		
		
		String msg = "";
		String url = "";
		if(result==1) { // 성공시
			msg="회원정보가 수정되었습니다.";
			url ="mview.jsp?id="+id;
		}else { //실패시
			msg="회원정보가 제대로 수정되지 않았습니다.";
			url ="mview.jsp?id="+id;
		}//if
		
		//html 페이지
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer=response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title>회원정보수정</title>");
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

}//SerVlet(Do_mupdate)

package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

/**
 * Servlet implementation class Do_mwrite
 */
@WebServlet("/Do_mwrite")
public class Do_mwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("Do_mwrite doAction");
    	request.setCharacterEncoding("UTF-8");
    	
    	String id=request.getParameter("id");
    	String pw=request.getParameter("pw");
    	String name=request.getParameter("name");
    	String phone=request.getParameter("phone");
    	String gender=request.getParameter("gender");
    	String[] hobbys=request.getParameterValues("hobby");
    	String hobby="";
    	for(int i=0;i<hobbys.length;i++) {
    		if(i==0) hobby=hobbys[i];
    		else hobby+=","+hobbys[i];
    	}//for
    	
    	//객체선언 객체에 넣기
    	MemberDto mdto = new MemberDto(id, pw, name, phone, gender, hobby);
    	
    	//회원정보 입력메소드 호출
    	MemberDao mdao = new MemberDao();
    	int result=mdao.memberInsert(mdto);
    	
    	//페이지 이동
    	response.setContentType("text/html; charset=UTF-8");
    	PrintWriter writer= response.getWriter();
    	writer.println("<html>");
    	writer.println("<head><title></title></head>");
    	writer.println("<body>");
    	writer.println("<script>");
    	writer.println("alert('회원정보가 저장되었습니다.');");
    	writer.println("location.href='mindex.jsp';");
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


}//CLASS

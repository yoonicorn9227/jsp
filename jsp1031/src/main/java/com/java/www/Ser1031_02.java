package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ser1031_02
 */
@WebServlet("/S02")
public class Ser1031_02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		String[] subjects=request.getParameterValues("subject");
		String subject="";
		for(int i=0;i<subjects.length;i++) {
			if(i==0) subject=subjects[i];
			else subject +=","+subjects[i];					
		}
		int s_kor= Integer.parseInt(request.getParameter("kor"));
		int s_eng= Integer.parseInt(request.getParameter("eng"));
		int s_math= Integer.parseInt(request.getParameter("math"));
		double s_avg = (s_kor+s_eng+s_math)/3.0;
		writer.println("<html>");
		writer.println("<head><title>학생성적 출력</title></head>");
		writer.println("<body>");
		writer.println("학생학번 : " + request.getParameter("no"));
		writer.println("<br>");
		writer.println("힉생이름 : " + request.getParameter("name"));
		writer.println("<br>");
		writer.println("국어점수 : " + s_kor );
		writer.println("<br>");
		writer.println("영어점수 : " + s_eng );
		writer.println("<br>");
		writer.println("수학점수 : " + s_math );
		writer.println("<br>");
		writer.println("성적합계 : "+(s_kor+s_eng+s_math) );
		writer.println("<br>");
		writer.println("성적평균 : " +(Math.round(s_avg)*100));
		writer.println("<br>");
		writer.println(" 계열선택 : " + request.getParameter("major"));
		writer.println("<br>");
		writer.println("좋아하는 과목 문자열 :"+ Arrays.toString(request.getParameterValues("subject")));
		writer.println("<br>");
		writer.println("좋아하는 과목 배열 :" + subject);
		writer.println("<br>");
		writer.println("학생주소 : " + request.getParameter("address"));
		writer.println("<br>");
		writer.println("<br>");
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

}

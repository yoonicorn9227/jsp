package com.java.www;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S01")
public class S1101_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");//post로 들어온것 한글처리 가능
		
		String id =request.getParameter("id"); //
		String pw =request.getParameter("pw");
		String name =request.getParameter("name");
		String gender =request.getParameter("gender"); //남자, 여자 (value값)
		String address =request.getParameter("address"); //서울~광주 (value값)
		
		String[] hobbys = request.getParameterValues("hobby"); //게임,골프,요리
		String hobby="";
		for(int i=0;i<hobbys.length;i++) {
			if(i==0) hobby = hobbys[i]; //처음꺼는 쉼표없이
			else hobby +=","+hobbys[i]; // 이후에는 쉼표 붙여서 ex),골프, 요리
		}//for
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer =response.getWriter(); //글자를 찍어준다
		
		writer.println("<html>");
		writer.println("<head><title>form데이터 가져오기</title><head>");
		writer.println("<body>");
		writer.println("<h3>아이디 :"+id+" </h3>");
		writer.println("<h3>패스워드 :"+pw+" </h3>");
		writer.println("<h3>이 름:"+name+ "</h3>");
		writer.println("<h3>성 별:"+gender+ "</h3>");
		writer.println("<h3>취 미:"+hobby+ "</h3>");
		writer.println("<h3>취미배열:"+Arrays.toString(hobbys)+ "</h3>");
		writer.println("<h3>주 소:"+address+ "</h3>");
		writer.println("</body>");
		writer.println("</html>");
	
		writer.close();
	
		
		/*
		writer.println("<html>"
				+ "<head>"
				+ "<title>form데이터 결과</title>"
				+ "</head>"
				+ "<body>"
				+ "<h3>id : </h3>"
				+ "<h3>pw : </h3>"
				+ "</body>"
				+ "</html>");
		writer.close();
		*/
		
		
		
		
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

package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Array;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S01")
public class S1031_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer= response.getWriter();
		System.out.println("id : "+request.getParameter("id"));
		System.out.println("hobby : "+Arrays.toString(request.getParameterValues("hobby"))); //체크박스는 배열로 넘어온다
		//배열을 hobbys 변수에 입력
		String[] hobbys = request.getParameterValues("hobby");
		String hobby = "";
		for(int i =0;i<hobbys.length;i++) {
			if(i==0) hobby=hobbys[i]; //game
			else hobby +=","+hobbys[i]; //game, golf, run, cook,
		}//for
		
		writer.println("<html>");
		writer.println("<head><title>form데이터</title></head>");
		writer.println("<body>");
		writer.println(" CheckBox hobby 배열 : " + Arrays.toString(request.getParameterValues("hobby")));
		writer.println("<br>");
		writer.println(" CheckBox hobby 1개 문자열 : " + hobby);
		writer.println("<br>");
		writer.println(" radio gender : " + request.getParameter("gender"));
		writer.println("<br>");
		writer.println(" select address : " + request.getParameter("address"));
		writer.println("<br>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request,response);
		doAction(request,response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
	}//doPost

}//CLASS

package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S01")
public class Ser1102_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		request.setCharacterEncoding("UTF-8");
		
		//▼input type = text,password, radio,select
		String name = request.getParameter("name"); //1개 데이터 불러오기
		
		//▼input type = checkbox
		String[] hobbys = request.getParameterValues("hobby"); //여러개의 데이터 불러오기
		//DB타입 : varchar2(String), number(int, double), date(date, timestmap)
		String hobby="";
			for(int i=0;i<hobbys.length;i++) {
				if(i==0) hobby=hobbys[i];
				else hobby += ","+hobbys[i];
			}//for
		
		response.setContentType("text/html; chatset=UTF-8");
		//PrintWriter writer=response.getWriter();
		
		
		System.out.println("이름 : "+ name);
		System.out.println("취미 1개 출력"+ hobby);
		System.out.println("취미 1개 출력"+ Arrays.toString(hobbys));
		
		
		//getParameterNames() 출력방법
		Enumeration enum1 = request.getParameterNames(); //id,pw, name, hobby
		while(enum1.hasMoreElements()) {
			String ename=(String)enum1.nextElement();
			String[] evalue=request.getParameterValues(ename);
			System.out.println("Input name명 : "+ename);
			System.out.println("Input Values명 : "+Arrays.toString(evalue));
		}//while
		
		
//		writer.println("<html>");
//		writer.println("<head><title>form데이터</title></head>");
//		writer.println("<body>");
//		writer.println("이름  : " + name);
//		writer.println("취미  : " + hobby);
//		writer.println("취미배열  : " + Arrays.toString(hobbys));
//		writer.println("</body>");
//		writer.println("</html>");
//		
//		writer.close();
	
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

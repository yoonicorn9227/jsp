package com.java.www;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ser05")
public class Ser05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//프로그램이 시작할때 1번 실행이됨.
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init()메소드는 시작할때 1번 실행이 됨.");
	}//init
	
	//프로그램이 종료될때 1번 실행이 됨.
	public void destroy() {
		System.out.println("destroy()메소드는 시작할떄 1번 실행이 됨.");
	
	}//destroy

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet은 URL접속도 get방식,form get방식마다 계속실행");
		doAction(request,response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost는 post방식으로 들어올때 계속싫행");
		doAction(request,response);
	}//doPost

}//CLASS

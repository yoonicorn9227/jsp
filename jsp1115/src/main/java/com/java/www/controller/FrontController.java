package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.BoardService;
import com.java.www.service.DoLoginMemberService;
import com.java.www.service.MemberService;
import com.java.www.service.listBoardService;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("UTF-8");
		String url=null;
		String uri = request.getRequestURI();
		System.out.println("uri : "+uri);
		String conPath=request.getContextPath();
		System.out.println("context Path : " + conPath);
		String fileName=uri.substring(conPath.length()+1);
		System.out.println("파일이름 : " + fileName);
		
		
		if(fileName.equals("index.do")) {
			System.out.println("메인 페이지로 이동");
			response.sendRedirect("index.jsp");
		}else if(fileName.equals("login.do")) {
			System.out.println("로그인 페이지로 이동");
			response.sendRedirect("login.jsp"); // sendRedirect는  request,response정보 리셋해서 넘어감. 리셋안되게 넘어가려면  RequestDispatcher 사용
		}else if(fileName.equals("doLogin.do")) {
			System.out.println("로그인 여부 확인 페이지 이동");
			//객체선언후 참조변수명. 메소드명 - 부모의 참조변수로 자손의 객체를 다룬다 : 다형성
			MemberService memberService = new DoLoginMemberService();
			memberService.execute(request, response);
			url="doLogin.jsp";
		}else if(fileName.equals("mwrite.do")) {
			System.out.println("회원가입 페이지로 이동");
			response.sendRedirect("mwrite.jsp");
		}else if(fileName.equals("list.do")) {
			System.out.println("게시판 페이지로 이동");
			url="list.jsp";
			//service 연결
			BoardService boardService = new listBoardService();
			boardService.execute(request, response);
			//DB정보 필요 - Dispatcher 사용
		}else if(fileName.equals("logout.do")) {
			System.out.println("로그아웃 페이지로 이동");
			response.sendRedirect("logout.jsp");
		}else if(fileName.equals("update.do")) {
			System.out.println("회원정보수정 페이지로 이동");
			//DB정보 필요 - Dispatcher 사용
		}//if
		
		//url이동
		if(url!=null) { //url이 있을때만 작동
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}//doPost

}//SerVlet(Basic)

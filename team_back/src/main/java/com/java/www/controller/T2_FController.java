package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.service.Ser_ListSelectOne;
import com.java.www.service.Ser_Delete;
import com.java.www.service.Ser_ListSelect;
import com.java.www.service.Ser_Login;
import com.java.www.service.Ser_MDoSingUp;
import com.java.www.service.Ser_MSelectOne;
import com.java.www.service.Ser_MUpdate;
import com.java.www.service.Ser_doMUpdate;
import com.java.www.service.Service;

@WebServlet("*.do")
public class T2_FController extends HttpServlet {

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("2T_FCtrl - doAction");
		request.setCharacterEncoding("UTF-8");

		// ▼파일이름 찾기
		String uri = request.getRequestURI();
		String cPath = request.getContextPath();
		String fileName = uri.substring(cPath.length());
		// ▼파일호출 이름
		System.out.println("FCtrl 호출이름 : " + fileName);

		// ▼변수선언
		String url = null;
		Service service = null;

		// ▼경로Switch
		switch (fileName) {
		case "/a_login.do": //1.로그인 페이지
			response.sendRedirect("a_login.jsp");
			break;
		case "/a_signUp.do": //2.회원가입 페이지
			response.sendRedirect("a_signUp.jsp");
			break;
		case "/a_logout.do": //2.로그아웃 페이지
			response.sendRedirect("a_logout.jsp");
			break;
		case "/a_main.do": //3.메인 페이지
			url="a_main.jsp";
			break;
		case "/a_myPage.do": //4.회원정보 페이지 - DB접근필요
			service = new Ser_MSelectOne();
			service.execute(request, response);
			url="a_myPage.jsp";
			break;
		case "/a_MUpdate.do": //5.회원정보 수정페이지 - DB접근필요
			service = new Ser_MUpdate();
			service.execute(request, response);
			url="a_MUpdate.jsp";
			break;
		case "/b_list.do": //6.요청게시판 페이지 - DB접근필요
			service = new Ser_ListSelect();
			service.execute(request, response);
			url="b_list.jsp";
			break;
		case "/b_view.do": //7.요청게시글 1개 보기 페이지 - DB접근필요
			service = new Ser_ListSelectOne();
			service.execute(request, response);
			url="b_view.jsp";
			break;
		case "/b_delete.do": //8.요청게시글 삭제 페이지 - DB접근필요
			service = new Ser_Delete();
			service.execute(request, response);
			url="b_delete.jsp";
			break;
		case "/b_write.do": //8.게시글 쓰기 화면
			response.sendRedirect("b_write.jsp");
			break;
		case "/do_Login.do": 
			service = new Ser_Login(); //로그인 체크&접속 메소드有
			service.execute(request, response);
			url="do_Login.jsp";
			break;
		case "/do_MUpdate.do": 
			service = new Ser_doMUpdate(); //회원정보 1개 열람 메소드 有
			service.execute(request, response);
			url="do_MUpdate.jsp";
			break;
		case "/do_MSignUp.do"://2.회원가입 하기
			service = new Ser_MDoSingUp();
			service.execute(request, response);
			url="do_MSignUp.jsp";
			break;
		}// switch

		// ▼url이 있는 경우
		if (url != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		} // if(url있는 경우)

	}// doAction

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}// doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}// doPost

}// SerVlet(T2_FController) - 2팀 컨트롤러
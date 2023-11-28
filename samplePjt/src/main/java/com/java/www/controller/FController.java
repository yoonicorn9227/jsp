package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.MInsertService;
import com.java.www.service.MSelectOneService;
import com.java.www.service.MUpdateService;
import com.java.www.service.N_DeleteService;
import com.java.www.service.N_InsertService;
import com.java.www.service.N_ReplyInsertService;
import com.java.www.service.N_SelectOneService;
import com.java.www.service.N_UpdateService;
import com.java.www.service.N_listSelectService;
import com.java.www.service.Service;
import com.java.www.service.doLoginService;

@WebServlet("*.do")
public class FController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("FCtrl doAction");
		request.setCharacterEncoding("UTF-8");	
		
		//▼파일이름 찾기
		String uri=request.getRequestURI();
		String uPath=request.getContextPath();
		String fileName=uri.substring(uPath.length());
		//파일호출 이름
		System.out.println("FCtrl 호출이름 : " + fileName);
		
		
		//▼변수선언
		String url=null;
		Service service=null;
		
		//▼경로 Switch
		switch(fileName) {
		case "/main.do" : //메인페이지
			response.sendRedirect("main.jsp");
			break;
		case "/join01_terms.do" : //회원가입1
			response.sendRedirect("join01_terms.jsp");
			break;
		case "/join02_info_input.do" : //회원가입2
			url="join02_info_input.jsp";
			break;
		case "/join03_success.do" : //회원가입3
			service = new MInsertService();
			service.execute(request, response);
			url="join03_success.jsp";
			break;
		case "/m_info_input.do" : //회원정보 수정 페이지 - 회원정보 1명 가져오기
			service = new MSelectOneService();
			service.execute(request, response);
			url="m_info_input.jsp";
			break;
		case "/doM_info_input.do" : //회원정보 수정
			service = new MUpdateService();
			service.execute(request, response);
			url="doM_info_input.jsp";
			break;
		case "/login.do" : //로그인
			response.sendRedirect("login.jsp");
			break;
		case "/logout.do" : //로그아웃
			response.sendRedirect("logout.jsp");
			break;
		case "/doLogin.do" :
			service = new doLoginService();
			service.execute(request, response);
			url="doLogin.jsp";
			break;
		case "/n_list.do" :
			service = new N_listSelectService();
			service.execute(request, response);
			url="n_list.jsp";
			break;
		case "/n_view.do" :
			service = new N_SelectOneService();
			service.execute(request, response);
			url="n_view.jsp";
			break;
		case "/n_insert.do" : //글쓰기페이지
			response.sendRedirect("n_insert.jsp");
			break;
		case "/doN_insert.do" :
			service = new N_InsertService();
			service.execute(request, response);
			url="doN_insert.jsp";
			break;
		case "/n_reply.do" : //답글달기 페이지
			service = new N_SelectOneService();
			service.execute(request, response);
			url="n_reply.jsp";
			break;
		case "/doN_reply.do" : //답글달기
			service = new N_ReplyInsertService();
			service.execute(request, response);
			url="doN_reply.jsp";
			break;
		case "/n_update.do" : //
			service = new N_SelectOneService();
			service.execute(request, response);
			url="n_update.jsp";
			break;
		case "/doN_update.do" : //
			service = new N_UpdateService();
			service.execute(request, response);
			url="doN_update.jsp";
			break;
		case "/n_delete.do" : //
			service = new N_DeleteService();
			service.execute(request, response);
			url="n_delete.jsp";
			break;
		default:
			break;
		}//switch
		
		//▼url이 있을경우
		if(url!=null) {
			RequestDispatcher dispatcher =  request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}//if(url 有)
		
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}//doPost

}//SerVlet

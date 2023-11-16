package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.BListService;
import com.java.www.service.DoBInsertService;
import com.java.www.service.MDoLoginService;
import com.java.www.service.Service;
import com.java.www.service.bViewService;
import com.java.www.service.doBUpdateService;

@WebServlet("*.do")
public class Fcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("FCtrl doAction");
		request.setCharacterEncoding("UTF-8");
		
		//파일이름 찾기
		String uri=request.getRequestURI();
		String cPath=request.getContextPath();
		String fileName=uri.substring(cPath.length());
		
		Service service=null;
		String url=null;
		switch(fileName) {
			case "/index.do":
				response.sendRedirect("index.jsp");
				break;
			case "/memInsert.do":
				response.sendRedirect("memInsert.jsp");
				break;
			case "/login.do":
				response.sendRedirect("login.jsp");
				break;
			case "/doLogin.do":
				service = new MDoLoginService(); //다형성 부모의객체에서 자손의 객체를 다루는것
				service.execute(request, response); //request를 MdoLoginService로 넘겨줌
				url="doLogin.jsp";
				break;
			case "/logout.do":
				response.sendRedirect("logout.jsp");
				break;
			case "/bList.do":
				service = new BListService(); 
				service.execute(request, response); 
				url="bList.jsp";
				break;
			case "/bInsert.do":
				response.sendRedirect("bInsert.jsp");
				break;
			case "/doBInsert.do":
				service = new DoBInsertService(); 
				service.execute(request, response); 
				url="doBInsert.jsp";
				break;
			case "/bView.do":
				service = new bViewService();
				service.execute(request, response); 
				url="bView.jsp";
				break;
			case "/bUpdate.do":
				service = new bViewService(); 
				service.execute(request, response); 
				url="bUpdate.jsp";
				break;
			case "/doBUpdate.do":
				service = new doBUpdateService(); 
				service.execute(request, response); 
				url="doBUpdate.jsp";
				break;
				
				
				
		}//switch(if문대신)
		
		//url이 있을때만, dispatcher 사용
		if(url!=null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(url);
			dispatcher.forward(request, response); //
		}//if
		
		
	
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}//doPost

}//SerVlet(FCtrl)

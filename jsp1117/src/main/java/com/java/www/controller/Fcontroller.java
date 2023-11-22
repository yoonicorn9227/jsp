package com.java.www.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.service.MDoLoginService;
import com.java.www.service.MInsertService;
import com.java.www.service.Service;
import com.java.www.service.BDeleteService;
import com.java.www.service.BInsertService;
import com.java.www.service.BListService;
import com.java.www.service.BReplyService;
import com.java.www.service.BSelectOneService;
import com.java.www.service.BUpdateService;
import com.java.www.service.DoBReplyService;

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
			case "/bInsert.do": //3.  게시글 쓰기 화면 - insert
				response.sendRedirect("bInsert.jsp");
				break;
			case "/bList.do": //1.  게시글 전체가져오기
				service = new BListService();
				service.execute(request, response);
				url="bList.jsp";
				System.out.println("컨트롤러 : bList.jsp호출"); //확인
				break;
			case "/bView.do": //2.  게시글 1개 가져오기(회원작성 게시글 보기)
				service = new BSelectOneService();
				service.execute(request, response);
				url="bView.jsp";
				System.out.println("컨트롤러 : bView.jsp호출"); //확인
				break;
			case "/doBInsert.do": //3.  게시글 쓰기 - insert
				service = new BInsertService();
				service.execute(request, response);
				url="doBInsert.jsp";
				break;
			case "/bUpdate.do": //4.  게시글 수정화면  - select
				service = new BSelectOneService();
				service.execute(request, response);
				System.out.println("컨트롤러 : bUpdate.jsp호출"); //확인
				url="bUpdate.jsp";
				break;
			case "/doBUpdate.do": //4.  게시글 수정  - update
				service = new BUpdateService();
				service.execute(request, response);
				System.out.println("컨트롤러 : doBUpdate.jsp호출"); //확인
				url="doBUpdate.jsp";
				break;
			case "/bDelete.do": //5.  게시글 삭제  - update
				service = new BDeleteService();
				service.execute(request, response);
				System.out.println(" bno : " + request.getParameter("bno"));
				System.out.println("컨트롤러 : bDelete.jsp호출"); //확인
				url="bDelete.jsp";
				break;
			case "/doMemInsert.do": //6.  회원가입  - Insert
				service = new MInsertService();
				service.execute(request, response);
				url="doMemInsert.jsp";
				break;
			case "/bReply.do": //7.  답글달기  - select
				service = new BReplyService();
				service.execute(request, response);
				//확인용
				System.out.println("bno : " + request.getParameter("bno")); //확인
				System.out.println("컨트롤러 : bReply.jsp호출"); //확인
				url="bReply.jsp";
				break;
			case "/doBReply.do": //7-1.  답글달기 저장  - insert
				service = new DoBReplyService();
				service.execute(request, response);
				//확인용
				System.out.println("컨트롤러 : doBReply.jsp호출"); //확인
				url="doBReply.jsp";
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

package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

public class Ser_MemDologin implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("execute : " + id);
		// 객체선언 - 메소드 호출
		MemberDao mdao = new MemberDao();
		MemberDto mdto = mdao.doLogin(id, pw);

		// 회원 검색확인
		int result = 0;
		if (mdto != null) {
			result = 1;
			HttpSession session = request.getSession();
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
		} // if(검색확인)
		
		System.out.println("execute result : " + result);
		// request객체에 담기
		request.setAttribute("result", result);

	}// execute

}// CLASS(Ser_MemDologin) 오버라이딩

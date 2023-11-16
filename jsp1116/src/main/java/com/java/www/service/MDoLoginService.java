package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

public class MDoLoginService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("Service id : " +id);
		
		//▼DAO 접근 - id,pw를 가지고, 1명의 회원검색
		MemberDao mdao = new MemberDao();
		MemberDto mdto = mdao.MDoLogin(id,pw);
		
		
		
		//1명이 검색되었는지 확인
		int result = 0;
		if(mdto!=null) { //검색되었으면 result 1 , 검색이 안되었으면 result 0
			result=1;
			HttpSession session = request.getSession();
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
		}//if(검색확인)
			
		
		
		//request객체 담기
		request.setAttribute("result", result); //담아서 FCtrl로 보낸다
		
		
		
	}//excute(오버라이딩)

}//CLASS(MemDoLoginService)

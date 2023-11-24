package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

public class doLoginService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int result =0 ;
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//dao 접근
		MemberDao mdao= new MemberDao();
		MemberDto mdto = mdao.DoLoginSelect(id,pw);
		
		//데이터 확인
		if(mdto!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
			result = 1;
		}//if
		
		
		//request객체에 담기
		request.setAttribute("result", result);
		
		
	}//execute(doLoginService)

}//CLASS

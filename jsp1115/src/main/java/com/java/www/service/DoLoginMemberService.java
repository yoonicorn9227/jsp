package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.MemberDao;
import com.java.www.dto.MemberDto;

public class DoLoginMemberService implements MemberService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("execute id : " + id);
		//객체생성
		MemberDao mdao = new MemberDao();
		MemberDto mdto = mdao.doLogin(id, pw);
		
		int result=0;
		if(mdto!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("session_id", mdto.getId());
			session.setAttribute("session_name", mdto.getName());
			result=1;
		}
		System.out.println("result : "+result);
		//request에 추가
		request.setAttribute("result", result);
		//request.setAttribute("mdto", mdto);
		
		
		
	}//execute()

}//CLASS

package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.Stu_memberDao;
import com.java.www.dto.Stu_memberDto;

public class Ser_MUpdate implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("session_id");
		
		//dao접근
		Stu_memberDao smdao= new Stu_memberDao();
		Stu_memberDto smdto = smdao.Dao_MSelectOne(id);
		
		
		//request
		request.setAttribute("smdto", smdto);
		
		
	}//execute

}//CLASS(회원정보 1개 수정)

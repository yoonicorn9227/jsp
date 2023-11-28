package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.Stu_memberDao;
import com.java.www.dto.Stu_memberDto;

public class Ser_MView implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		HttpSession session =request.getSession();
		String id = (String) request.getAttribute("session_id");
		//DAO접근
		Stu_memberDao smdao = new Stu_memberDao();
		Stu_memberDto smdto = smdao.Dao_MViewOne(id);
		
		//request에추가
		request.setAttribute("smdto", smdto);
		
	}//execute(Ser_MView)

}//CLASS(회원정보보기)

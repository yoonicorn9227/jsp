package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.Stu_memberDao;
import com.java.www.dto.Stu_memberDto;

public class Ser_Login implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		System.out.println("Ser_Login id : " +id);
		System.out.println("Ser_Login pw : " +pw);
		int result = 0;

		// Dao접근
		Stu_memberDao smdao = new Stu_memberDao();
		Stu_memberDto smdto = smdao.Dao_Login(id, pw);

		// 결과값 확인
		if (smdto != null) {
			HttpSession session = request.getSession();
			session.setAttribute("session_id", smdto.getId());
			session.setAttribute("session_name", smdto.getName());
			result = 1;
		} // if

		System.out.println("Ser_Login Result : " + result);

		// request추가
		request.setAttribute("result", result);

	}// execute(Ser_Login)

}// CLASS(로그인 서비스)

package com.java.www.service;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.Stu_memberDao;
import com.java.www.dto.Stu_memberDto;

public class Ser_MDoSingUp implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw1");
		String name = request.getParameter("name");
		String p_num = request.getParameter("p_num");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String region = request.getParameter("region");

		Stu_memberDto smdto = new Stu_memberDto(id, pw, name, gender, p_num, phone, email, region);

		// dao접근
		Stu_memberDao smdao = new Stu_memberDao();
		int result = smdao.dao_DoMSignUp(smdto);

		// request추가
		request.setAttribute("result", result);

	}// execute(Ser_MDoSingUp)

}// CLASS(회원가입)

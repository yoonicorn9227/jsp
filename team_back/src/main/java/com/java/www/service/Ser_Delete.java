package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.Stu_boardDao;

public class Ser_Delete implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// Dao접근
		Stu_boardDao sbdao = new Stu_boardDao();

		// 변수선언
		int bsno = 0, page = 1;

		page = Integer.parseInt(request.getParameter("page"));
		bsno = Integer.parseInt(request.getParameter("bsno"));
		System.out.println("Ser_Delete page : " + page);
		System.out.println("Ser_Delete bsno : " + bsno);

		int result = sbdao.dao_Bdelete(bsno);
		System.out.println("resullt :" + result);

		// request 추가
		request.setAttribute("page", page);

	}// execute(Ser_Delete)

}// CLASS(게시글 삭제)

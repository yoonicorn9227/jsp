package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.Stu_boardDao;
import com.java.www.dto.Stu_boardDto;

public class Ser_ListSelectOne implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// dao접근
		int page = Integer.parseInt(request.getParameter("page"));
		int bsno = Integer.parseInt(request.getParameter("bsno"));

		
		Stu_boardDao sbdao = new Stu_boardDao();
		Stu_boardDto sbdto = sbdao.dao_selectOne(bsno);

		// request추가
		request.setAttribute("sbdto", sbdto);
		request.setAttribute("page", page);
	}// execute

}// CLASS(게시글 1개)

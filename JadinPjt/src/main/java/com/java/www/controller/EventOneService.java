package com.java.www.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.EventDao;
import com.java.www.dto.BoardDto;
import com.java.www.dto.EcommentDto;
import com.java.www.service.Service;

public class EventOneService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		int bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("EO Service bno : " + bno);
		
		// dao접근
		EventDao edao = new EventDao();
		BoardDto bdto = edao.selectOne(bno);
		
		//comment접근
		ArrayList<EcommentDto> clist = edao.commSelectAll(bno);

		// request

		request.setAttribute("bdto", bdto);
		request.setAttribute("clist", clist);
		request.setAttribute("ccount", clist.size());

	}// execute(EventOneService)

}// CLASS(이벤트 게시판 1개)

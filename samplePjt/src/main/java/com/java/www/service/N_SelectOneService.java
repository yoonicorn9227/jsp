package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class N_SelectOneService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//Dao
		int bno = Integer.parseInt(request.getParameter("bno"));
		BoardDao bdao = new BoardDao();
				
		BoardDto bdto= bdao.selectOne(bno);
		
		
		
		
		//request추가
		request.setAttribute("bdto", bdto);
		
	}//execute(N_SelectOneService)

}//CLASS(Service - 게시글 1개)

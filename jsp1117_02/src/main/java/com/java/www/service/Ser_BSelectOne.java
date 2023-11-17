package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class Ser_BSelectOne implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//dao 접근
		int bno= Integer.parseInt(request.getParameter("bno"));
		BoardDao bdao = new BoardDao();
		BoardDto bdto = bdao.DSelectOne(bno);
		
		
		//확인
		System.out.println("execute : " + bno);
		System.out.println("execute bdto : "+bdto);
		//request객체에 담기
		request.setAttribute("bdto", bdto);
		
	}//execute(Ser_BSelectOne)

}//CLASS(Ser_BSelectOne)

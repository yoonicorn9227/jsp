package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class bViewService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		int bno = Integer.parseInt(request.getParameter("bno"));
		System.out.println("bViewService bno : "+bno);
		
		//dao접근
		BoardDao bdao=new BoardDao();
		BoardDto bdto=bdao.bSelectOne(bno);
		System.out.println("bdto btitle: "+bdto.getBtitle());
		
		//request객체에 담은
		request.setAttribute("bdto", bdto);
		
		
		
	}//execute

}//CLASS

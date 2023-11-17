package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class Ser_Blist implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//dao에 접근
		BoardDao bdao = new BoardDao();
		ArrayList<BoardDto> list = bdao.DBlist();
		
		//확인
		System.out.println("execute : " + list.get(0).getBno());
		
		//request객체에 담기
		request.setAttribute("list", list);
		
		
	}//execute(Ser_Blist)

}//CLASS

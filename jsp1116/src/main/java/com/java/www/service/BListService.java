package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class BListService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		BoardDao bdao = new BoardDao();
		//게시글 전체가져오기
		ArrayList<BoardDto> list = bdao.bListSelectAll();
		System.out.println("BListService list : "+list.get(0).getBno());
		
		//request객체에 담기
		request.setAttribute("list", list);
		
	}//execute(BListService) 

}//CLASS-오버라이딩

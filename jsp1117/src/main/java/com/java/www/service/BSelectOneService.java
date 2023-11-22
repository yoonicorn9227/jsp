package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class BSelectOneService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//dao 접근
		int bno= Integer.parseInt(request.getParameter("bno"));
		BoardDao bdao = new BoardDao();
		
		//▼조회수 1 증가
		bdao.bhitUp(bno);
		
		//1개 게시글 가져오기
		BoardDto bdto = bdao.selectOne(bno);
		
		//request객체에 담기
		request.setAttribute("bdto", bdto);
		
		
	}//execute(BSelectOneService)

}//CLASS(BSelectOneService)-오버라이딩

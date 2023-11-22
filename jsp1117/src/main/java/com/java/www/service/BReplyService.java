package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class BReplyService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// 전송된 데이터
		int bno = Integer.parseInt(request.getParameter("bno"));
		int result = 0;
		System.out.println("BReplyService bno : "+bno);
		// dao접근
		BoardDao bdao = new BoardDao();
		BoardDto bdto = bdao.selectOne(bno); //selectOne 가져온다

		
		
		
		
		// request객체 추가
		request.setAttribute("bdto", bdto);

	}// execute(BReplyService)

}// CLASS(오버라이딩)

package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class listBoardService implements BoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDao bdao = new BoardDao();
		ArrayList<BoardDto> list = bdao.listSelectAll();
		//System.out.println("listBoardService execute : " +list.get(0).getBno());
		request.setAttribute("list", list);
		
	}//

}//CLASS

package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.EventDao;
import com.java.www.dto.BoardDto;

public class EventService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// 변수 선언

		// dao접근
		EventDao edao = new EventDao();
		ArrayList<BoardDto> list = edao.selectAll();

		// request
		request.setAttribute("list", list);

	}// execute(EventService)

}// CLASS

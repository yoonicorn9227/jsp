package com.java.www.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.Stu_boardDao;
import com.java.www.dto.Stu_boardDto;

public class Ser_Blist implements Service {
	// Dao접근
	Stu_boardDao sbdao = new Stu_boardDao();

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// ★★★★★ 하단넘버링★★★★
		// 1.현재페이지
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
			System.out.println("request.getParmeter page : " + page);
		} // if
		// -->numbering 메소드 호출
		Map<String, Object> map = numbering(page);
		int listCount = (int) map.get("listCount");
		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");
		int maxPage = (int) map.get("maxPage");
		int startPage = (int) map.get("startPage");
		int endPage = (int) map.get("endPage");

		// ****** 전체게시글 가져오기**********
		ArrayList<Stu_boardDto> list = sbdao.dao_Blist(startRow, endRow);

		// ▼request추가
		request.setAttribute("list", list);
	}// execute(Ser_Blist)

	// ♤넘버링메소드 : 리턴타입 메소스명(매개변수0
	public Map<String, Object> numbering(int page) {
		Map<String, Object> map = new HashMap();

		int rowPage = 10; // 1Page 당 10개의 게시글 표시
		int bottomPage = 10; // 하단 번호표시 총 개수 [1,2,3,4,5,6,7,8,9,10]

		// 1. ***< 전체개수 >***
		int listCount = sbdao.dao_listCount();
		System.out.println("현재페이지 : " + page);

		// 2.maxPage 최대 하단 넘버링 페이지 41/10 = 4.1 =Math.ceil=> 5.0Page =(int)=> 5Page
		int maxPage = (int) Math.ceil((double) listCount / rowPage);

		// 3. startPage : 하단넘버링 시작번호
		int startPage = (int) ((page - 1) / bottomPage) * bottomPage + 1;

		// 4. endPage : 하단 넘버링 끝
		int endPage = startPage + bottomPage - 1;

		// 5. startRow - 오라클에서 가져오는 시작번호
		int startRow = (page - 1) * rowPage + 1;

		// 6.endPage - Oracle에서 가져오는 끝번호
		int endRow = startRow + rowPage;

		// map에 listCount,maxPage,startPage,endPage,startRow,endRow
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}// Map numbering() -넘버링 메소드

}// CLASS(요청게시판 - 게시글 전체)

package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class N_listSelectService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//dao접근 - select
		BoardDao bdao = new BoardDao();
		
		//검색부분
		String category = request.getParameter("category");
		String sword = request.getParameter("sword");
		System.out.println("service category : "+category);
		System.out.println("service sword : "+sword);
		
		//------------- 하단 넘버링 필요내용 시작 --------------
		// 현재페이지,게시글전체개수,최대페이지,시작페이지,끝페이지
		int rowPage = 10;    //1페이지당 10개 게시글
		int bottomPage = 10; //1,2,3,4,5,6,7,8,9,10
		int page = 1;
		if(request.getParameter("page")!=null) 
			page = Integer.parseInt(request.getParameter("page")); //page가 없는데, 에러
		System.out.println("service 현재페이지 : "+page);    
		//게시글 수 - category,sword
		int listCount = bdao.nListCount(category,sword);
		System.out.println("N_listSelectService listCount : "+listCount);
		
		int maxPage = (int) Math.ceil((double)listCount/rowPage); //1,1,1,1,1,1,1,1,1,1,11,11,11,11,11,11,11,11,....,21,21,21...
		int startPage = (int)((page-1)/bottomPage)*bottomPage + 1; 
		int endPage = startPage + bottomPage - 1; //10,20,30
		if(endPage>maxPage) endPage = maxPage; //
		int startRow = (page-1)*rowPage+1; //1,11,21,31,41
		int endRow = startRow+rowPage-1;   //10,20,30,40,50
		//------------- 하단 넘버링 필요내용 끝 --------------
		
		// 전체게시글,검색 가져오기
		ArrayList<BoardDto> list = bdao.n_listSelect(category,sword,startRow,endRow);
		
		
		
		//request 추가
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("listCount", listCount);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("category", category);
		request.setAttribute("sword", sword);

	}

}

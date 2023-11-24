package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;

public class N_listSelectService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		//넘어온 데이터 없음
		//dao 접근
		BoardDao bdao = new BoardDao();
		
		int rowPage = 10; //1페이지당 10개의 게시글
		int bottomPage = 10; //1,2,3...10 하단 넘버링
		
		//-----------★1).하단 넘버링 필요내용----------------------------
		//page, listCount,startPagem,endPage, maxPage
		//작업순서 : 현재페이지, 게시글전체 갯수,최대페이지, 시작페이지, 끝페에지
		int page=1;
		if(request.getParameter("page")!=null) { //페이지가 넘어올떄만 if
			page = Integer.parseInt(request.getParameter("page")); //page가 없는데, 에러
		}//if
	
		
		System.out.println("Service 현재 페이지 : " + page);	
		//1-1).listCount : 게시글 전체 갯수 - select count(*) from board;
		int listCount = bdao.nListCount();	
		System.out.println("n_list Count : " + listCount);
		//2) 최대페이지(maxPage)
		int maxPage = (int) Math.ceil((double)listCount/rowPage);
		//3)시작페이지(startPage)
		int startPage = (int)((page-1)/bottomPage)*bottomPage +1; //1...,11...,21...
		//4)끝페이지(endPage)
		int endPage = startPage + bottomPage - 1;
		//마지막 페이지가 최대페이지보다 클경우
		if(endPage>maxPage) endPage = maxPage;
		int startRow = (page-1)*rowPage+1 ; // 하단 넘버링 클릭시 1,11,21,31 
		int endRow = startRow+rowPage-1; //10,20,30...
		//-------------------★ 하단 넘버링 끝--------------------------------
		
		//전체게시글 가져오기
		ArrayList<BoardDto> list = bdao.n_listSelect(startRow, endRow);
		
		//request객체에 추가
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("listCount", listCount);
		request.setAttribute("maxPage", maxPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		
	}//execute(N_listSelectService)

}//CLASS(게시판)

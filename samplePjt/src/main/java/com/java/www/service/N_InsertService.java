package com.java.www.service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class N_InsertService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		//DAO접근
		BoardDao bdao = new BoardDao();
		
		//변수선언
		HttpSession session = request.getSession();
		String id= (String) session.getAttribute("session_id");
		String btitle="", bcontent="", bfile="";		
		
		
		
		//form 데이터 처리 MultipartRequest		
		String upload = "c:/upload";
		int size = 10*1024*1024;
		try {
			MultipartRequest multi=new MultipartRequest(request, upload, size, "UTF-8", new DefaultFileRenamePolicy());
			btitle=multi.getParameter("btitle");
			bcontent=multi.getParameter("bcontent");
			//input type=file 인것 이름모두 가져옴
			Enumeration files = multi.getFileNames();	//name값이 각각 넘어옴. name=bfile ,name= bfile2 ....	
			while(files.hasMoreElements()) {
				String f = (String) files.nextElement(); //형변환(Enumeration이기 때문에 String으로 변환)
				bfile=multi.getFilesystemName(f); //똑같은 파일이 있을 경우 이름을 변경해서 보내줘
			}//while
			
			BoardDto bdto = new BoardDto(btitle, bcontent, id, bfile);
			
			//dao 접근 게시글 저장 메소드 호출
			int result = bdao.insert(bdto);
			
			//request추가
			request.setAttribute("result", result);
			
		} catch (Exception e) {e.printStackTrace();}		
		
		
		
		
		
	}//execute(N_InsertService)

}//CLASS(SerVice_글쓰기)

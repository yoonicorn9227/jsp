package com.java.www.service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BInsertService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		// dao
		BoardDao bdao = new BoardDao();

		// form파일 가져오기
		String upath = "c:/upload";
		int size = 10 * 1024 * 1024; // 10MB
		
		
		//변수 선언
		String btitle="", bcontent="", id="", bfile="";
		int result=0;
		BoardDto bdto =null;
		try {
			MultipartRequest multi = new MultipartRequest(request, upath, size, "UTF-8", new DefaultFileRenamePolicy());
			btitle =multi.getParameter("btitle");
			bcontent =multi.getParameter("bcontent");
			id =multi.getParameter("id");
			
			//파일이름 가져오기
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String f = (String)files.nextElement();
				bfile = multi.getFilesystemName(f); //파일이름을 가져옴.
			}//while
			
			
			bdto = new BoardDto(result, btitle, bcontent, id, bfile);
			
			//dao호출
			result=bdao.bInsert(bdto);
			
			
			
		} catch (Exception e) {e.printStackTrace();}

	}// execute(BInsertService)

}// CLASS(BInsertService) - 오버라이딩

package com.java.www.service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class DoBInsertService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String btitle="", id="", bcontent="", bfile="";
		
		
		//enctype으로 넘어왔기때문에 (from BInsert.jsp) MultipartRequest 객체선언 new MultipartRequest(request, upload,size, "UTF-8", new DefaultFileRenamePolicy())
		String upload = "c:/upload"; //c드라이브 upload라는 파일에 올리겠다.
		int size = 10*1024*1024; //10MB | ※1024byte ->1MB
		try {
			MultipartRequest multi = new MultipartRequest(request, upload, size,"UTF-8", new DefaultFileRenamePolicy());
		
			btitle=multi.getParameter("btitle");
			System.out.println("execute btitle : " + btitle);
			id=multi.getParameter("id");
			bcontent=multi.getParameter("bcontent");
			
		//파일이름 form에서 input type="file" name
			Enumeration files = multi.getFileNames();
			while(files.hasMoreElements()) {
				String f = (String) files.nextElement();
				bfile = multi.getFilesystemName(f);
				System.out.println("execute bfile : "+bfile);
			}//while(files.hasMoreElements)
		
			//▼dto 객체를 담음
			BoardDto bdto = new BoardDto(btitle, bcontent, id, bfile);
			
			//dao연결
			BoardDao bdao = new BoardDao();
			int result = bdao.bInsert(bdto);
			System.out.println("execute result"+result);
			
			
		} catch (Exception e) {e.printStackTrace();}
	}//execute(DoBInsertService)

}//CLASS(오버라이딩)

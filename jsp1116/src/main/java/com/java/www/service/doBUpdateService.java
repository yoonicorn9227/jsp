package com.java.www.service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class doBUpdateService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		//bno,id,btitle,bcontent,bfile,oldBfile
		
		//
		String upload ="c:/upload";
		int size = 10*1024*1024; //10MB
		int bno=0;
		String id="", btitle="",bcontent="",bfile="",oldBfile="";
		try {
			MultipartRequest multi = new MultipartRequest(request, upload, size, "UTF-8",new DefaultFileRenamePolicy());
			bno = Integer.parseInt(multi.getParameter("bno"));
			id = multi.getParameter("id");
			btitle = multi.getParameter("btitle");
			bcontent = multi.getParameter("bcontent");
			oldBfile=multi.getParameter("oldBfile");
			System.out.println("doBUpdateService oldBfile : "+oldBfile);
			//파일이름가져오기
			Enumeration files = multi.getFileNames();
			//1개의 input type=file 있기때문에 무조건 실행됨.
			if(files.hasMoreElements()) {//input type = file 일겨우 있는것으로 판단
					String f = (String)files.nextElement(); //하나를 들고온다
					bfile=multi.getFilesystemName(f);//신규로 파일이 등록될때 | 파일첨부가 없으면 null, 있으면 파일이름을 넣어줌
			}//if
			//bfile 파일첨부가 안되어 있으면 oldBfile이름으로 변경
			if(files.nextElement()==null) {
				System.out.println("파일없음");
				bfile = oldBfile;//새로운 파일첨부가 없으면 이전파일을 저장.
				
			}//if2
			
			
			
			
			
			System.out.println("bfile : "+bfile);
			
			//객체에 담기
			BoardDto bdto = new BoardDto(bno, btitle, bcontent, id, bfile);
			
			//dao 접근
			BoardDao bdao = new BoardDao();
			int result = bdao.doBUpdate(bdto);
			
			//request겍체에 담기
			request.setAttribute("result", result);
			request.setAttribute("bno", bno);
			
			
			
		} catch (Exception e) {e.printStackTrace();}
		
	}//execute(doBUpdateService)

}

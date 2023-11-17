package com.java.www.service;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BUpdateService implements Service {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// 변수 선언
		int bno = 0;
		String btitle = "", bcontent = "", id = "", bfile = "", oldfile = "";
		int result = 0;
		BoardDto bdto = null;
		BoardDao bdao = new BoardDao();

		// 파일선언
		String uPath = "c:/upload";
		int size = 10 * 1024 * 1024;

		// 파일이름 가져오기
		try {
			MultipartRequest multi = new MultipartRequest(request, uPath, size, "UTF-8", new DefaultFileRenamePolicy());
			bno = Integer.parseInt(multi.getParameter("bno"));
			btitle = multi.getParameter("btitle");
			bcontent = multi.getParameter("bcontent");
			oldfile = multi.getParameter("oldfile");

			// 파일첨부이름 가져오기
			Enumeration files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String f = (String) files.nextElement();
				bfile = multi.getFilesystemName(f);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// bfile이 null이면 oldfile로 변경
		if (bfile == null)
			bfile = oldfile;

		// 객체로 모으기
		bdto = new BoardDto(bno, btitle, bcontent, id, bfile);

		// dao호출
		result = bdao.bUpdate(bdto);

		// request객체 담기
		request.setAttribute("result", result);
		request.setAttribute("bno", bno);

	}// execute(BUpdateService)

}// CLASS(BUpdateService) 오버라이딩

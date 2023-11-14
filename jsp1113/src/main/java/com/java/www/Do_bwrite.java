package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.www.dao.BoardDao;
import com.java.www.dto.BoardDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/Do_bwrite")
public class Do_bwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		HttpSession session=request.getSession();
		request.setCharacterEncoding("UTF-8");
		//파일첨부 : 파일첨부선언
		//
		//String uPath = request.getRealPath("fupload"); //tomcat9 wtpwebapps에 있는 fupload 파일첨부
		String uPath ="c:/upload"; //절대경로
		
		int size = 10*1024*1024; //10MB = 10m*1024KB*1024KB
		//▼MultipartRequest multi=new MultipartRequest(request,파일저장경로,크기,인코딩,같은이름변경정책 : 파일명.jpg - >파일명(1).jpg -> 파일명(2).jpg
		//객체선언할때 파일을 업로드 시킴
		MultipartRequest multi = new MultipartRequest(request, uPath,size,"UTF-8",new DefaultFileRenamePolicy()); //파일을 업로드됨
		String btitle = multi.getParameter("btitle");
		String id = multi.getParameter("id");
		String bcontent = multi.getParameter("bcontent");
		
		
		
		//▼☆파일1개 업로드 : Enumeration
		Enumeration files = multi.getFileNames();
		String file1 = (String)files.nextElement(); // object라서 형변환 -> String
		//▼실제파일 서버업로드이름
		String bfile = multi.getFilesystemName(file1);
		
		 
		BoardDto bdto = new BoardDto(btitle,bcontent,id,bfile);
		BoardDao bdao = new BoardDao();
		int result = bdao.insertOne(bdto);
		
//		System.out.println(btitle);
//		System.out.println(id);
//		System.out.println(bcontent);
//		System.out.println("input name : "+file1); //input name
//		System.out.println("변경된 파일이름 : "+bfile);
		
		
		//★파일여러개 업로드
//		Enumeration files = multi.getFileNames();
//		String[] file_arr = new String[3];
//		String[] bfile = new String[3];
//		int i=0;
//		while(files.hasMoreElements()) {
//			file_arr[i] = (String) files.nextElement();//bfile, bfile2, bfile3
//			bfile[i] = multi.getFilesystemName(file_arr[i]);//1.jpg,2.jpg,3.jpg
//			i++;
//		}//while
//		
//		for(i=0;i<file_arr.length;i++) {
//			System.out.println("input name : "+file_arr[i]); //input name
//			System.out.println("변경된 파일이름 : "+bfile[i]);
//		}//for
		
		
		//페이지이동(html)
		response.setContentType("text/html; chatset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>게시글 저장</title></head>");
		writer.println("<body>");
		writer.println("<script>");
		writer.println("alert('게시글을 저장했습니다.');");
		writer.println("location.href='blist.jsp';");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request,response);
	}//doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request,response);
	}//doPost

}//SerVlet

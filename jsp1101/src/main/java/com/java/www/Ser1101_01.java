package com.java.www;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/S_01")
public class Ser1101_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("doAction");
		PrintWriter writer =response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>form</title><head>");
		writer.println("<body>");
		writer.println("");
		writer.println("</body>");
		writer.println("</html>");
	
		writer.close();
	
	
	
	}//doAction
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request, response);
	}//doGet
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request, response);
	}//doPost

}//CLASS

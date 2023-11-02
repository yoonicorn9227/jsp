<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>jsp-request</title>
	</head>
	<body>
		<%
			out.println("서버  : "+request.getServerName()+"<br>"); //서버ip : 네트워크상에  유일한 내 컴퓨터 주소   ex)localhost or 198.752.02      
			out.println("포트번호  : "+request.getServerPort()+"<br>"); // 포트 : 내 컴퓨터에 설치된 어떤 서버를 통해(톰캣) 실행 띄울것인가? ex)8181
			out.println("프로젝트명 : "+request.getContextPath()+"<br>"); //프로젝트명 ex)jsp1102 ★외우기
			out.println("method : "+request.getMethod()+"<br>");
			out.println("프로토콜  : "+request.getProtocol()+"<br>");
			out.println("url 전체주소  : "+request.getRequestURL()+"<br>"); //전체주소 
			out.println("uri주소  : "+request.getRequestURI()+"<br>"); //★외우기
			out.println("접속자 ip  : "+request.getRemoteAddr()+"<br>"); //누가접속했지 User의 ip주소 ★외우기

		
			//파일명을 출력하시오. ★외우기

			String file_uri = request.getRequestURI();
			out.println("프로젝트명 길이: "+request.getContextPath().length()+"<br>"); //프로젝트명 ex)jsp1102
			String fileName = file_uri.substring(request.getContextPath().length());			
			out.println("파일이름 : " + fileName);
		
		%>
	
	
	
	
	
	</body>
</html>
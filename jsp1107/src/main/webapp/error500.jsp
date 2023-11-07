<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %> <!-- -->
<%response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>error404</title>
	<style>
		*{margin:0; padding: 0;}
		div{width: 100%; margin :0px auto;}
		img{width: 100%;}
	</style>
	</head>
	<body>
	<div>
	<a href="/jsp1107/layout/main.jsp"><img src="error500.jpg"></a>
	</div>
	
	<div>
		<%=exception.getMessage() %>
	</div>
	</body>
</html>
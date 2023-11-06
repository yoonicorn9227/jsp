<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pages - Login</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/login.css">
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  
</head>

<body>
	<%session.invalidate(); %>
  <script>
 	 alert("로그아웃 되었습니다.");
 	 location.href="cLogin.jsp";
  </script>
</body>
</html>
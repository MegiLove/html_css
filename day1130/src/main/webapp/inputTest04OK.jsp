<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String bloodType = request.getParameter("bloodType");
%>
입력한 혈액형은 <%= bloodType %>입니다
<hr>
</body>
</html>
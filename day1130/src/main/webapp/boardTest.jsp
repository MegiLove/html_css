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
	request.setCharacterEncoding("euc-kr");
	int number=Integer.parseInt(request.getParameter("number"));
	String name= request.getParameter("name");
	String email= request.getParameter("email");
	String title= request.getParameter("title");
	String pwd= request.getParameter("pwd");
	String text= request.getParameter("content");
%>
</body>
</html>
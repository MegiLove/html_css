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
	String subject=request.getParameter("subject");
	String job=request.getParameter("job");
	%>
	
	좋아하는 과목은 다음과 같습니다<br>
	<%=subject %><br>
	
	직업은 다음과 같습니다<br>
	<%=job %><br>
</body>
</html>
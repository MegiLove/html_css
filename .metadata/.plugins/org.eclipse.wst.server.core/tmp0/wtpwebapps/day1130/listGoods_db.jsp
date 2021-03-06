<%@page import="com.sist.vo.GoodsVO"%>
<%@page import="com.sist.dao.GoodsDAO"%>
<%@page import="java.util.ArrayList"%>
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
	GoodsDAO dao = new GoodsDAO();
	ArrayList<GoodsVO> list = dao.listGoods();
	%>

	<h2>상품정보 목록</h2>
	<hr>
	<table border="1" width=80%>
		<thead>
			<tr>
				<th>상품번호</th>
				<th>상품명</th>
				<th>가격</th>
				<th>수량</th>
				<th>이미지</th>
			</tr>
		</thead>
		<tbody>			
				<%
				for (GoodsVO g : list) {
				%>
				<tr>
				<td><%=g.getNo()%></td>
				<td><%=g.getName()%></td>
				<td><%=g.getPrice()%></td>
				<td><%=g.getQty()%></td>
				<td><img src="images/<%=g.getFname()%>" width="100"
					height="100"></td>
				</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>
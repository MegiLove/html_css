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

	<h2>��ǰ���� ���</h2>
	<hr>
	<table border="1" width=80%>
		<thead>
			<tr>
				<th>��ǰ��ȣ</th>
				<th>��ǰ��</th>
				<th>����</th>
				<th>����</th>
				<th>�̹���</th>
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
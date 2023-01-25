<%@page import="com.ProductDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int num = Integer.parseInt(request.getParameter("num"));
	int priceNum =  Integer.parseInt(request.getParameter("priceNum")); 
	
	ProductDAO pdao = new ProductDAO();
	ProductDTO pdto = pdao.productSelectOne(num);
	
	int sum = priceNum*pdto.getPrice();
	


%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@ include file="front_header.jsp"%>
<body>
	<%@ include file="header.jsp"%>
			<table border="1" style="margin:0 auto">
			<form action="pay.jsp" method="post">
			<tr height="35">
				<td rowspan="4"><img src="<%=pdto.getMainimg() %>"></td>
				<td>상품이름 </td>
				<td><%=pdto.getName() %></td>
			</tr>
			<tr height="35">
				<td>상품가격</td>
				<td><%=pdto.getPrice() %></td>
			</tr>
			<tr height="35">
				<td>상품설명</td>
				<td><%=pdto.getInfo() %></td>
			</tr>
			<tr height="35">
				<td>곡객님이 지불한 총 금액은 ? </td>
				<td>
					<%=sum %>
				</td>
			</tr>
			<tr height="35">
				<td colspan="3" align="center">
					<input type="submit" value="결제하기"></form>
					<button onclick="location.href='daily.jsp'">뒤로가기</button>
				</td>
			</tr>
		</table>
	<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
</body>
</html>
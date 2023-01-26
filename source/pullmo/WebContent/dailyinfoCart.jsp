<%@page import="com.CartDTO"%>
<%@page import="com.CartDAO"%>
<%@page import="com.ProductDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	String id = (String)session.getAttribute("id");
	CartDAO cdao = new CartDAO();
	Vector<CartDTO> v = cdao.selectOne(id);
%>

<!DOCTYPE>
<html>

<%@ include file="front_header.jsp"%>
<body>
	<%@ include file="header.jsp"%>
	
	<h2>장바구니</h2>
	<div class="inner">
		<table width="1200">
			<tr height="35">
				<td width="15%" align="center">번호</td>
				<td width="10%" align="center">상품이미지</td>
				<td width="20%" align="center">상품이름</td>
				<td width="30%" align="center">상품정보</td>
				<td width="10%" align="center">상품수량</td>
				<td width="10%" align="center">상품가격</td>
				<td width="5%" align="center">-</td>
			</tr>
			
			<%
				for(int i=0; i<v.size() ;i++){
					CartDTO c = v.get(i);
					int result = c.getPricenum() * c.getPrice();
			%>
			
				<tr height="35">
					<td width="15%" align="center"><%=i + 1 %></td>
					<td width="10%" align="center"><img src="<%=c.getMainimg() %>" width="65"></td>
					<td width="20%" align="center"><%=c.getName() %></td>
					<td width="30%" align="center"><%=c.getInfo()%></td>
					<td width="10%" align="center"><%=c.getPricenum() %></td>
					<td width="10%" align="center"><%=result%></td>
					<td width="5%" align="center"><button>X</button></td>
				</tr>
				
				
			<%	
				}
			%>
		</table>
	</div>
	
	
	
	<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
</body>
</html>
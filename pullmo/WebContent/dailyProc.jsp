<%@page import="com.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String user_id =(String)session.getAttribute("id"); // 세션에서 값을 가져오는 방법

	
%>


<jsp:useBean id="product" class="com.CartDTO">
	<jsp:setProperty property="*" name="product"/>>
</jsp:useBean>



<%
	ProductDAO pdao = new ProductDAO();
	pdao.productInsert(product);
	System.out.println(product);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<%
	response.sendRedirect("daily.jsp");
%>

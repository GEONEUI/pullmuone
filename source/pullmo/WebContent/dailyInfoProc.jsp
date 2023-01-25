<%@page import="com.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
<%

	String id = request.getParameter("user_id");
	int priceNum = Integer.parseInt(request.getParameter("priceNum"));
	int num = Integer.parseInt(request.getParameter("num"));
	

	CartDAO cdao = new CartDAO();
	cdao.cartInsert(num,priceNum,id);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
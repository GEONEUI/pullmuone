<%@page import="com.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>




<%

	String id = request.getParameter("id");

	if(id.equals("손님")){%>
			<script>
				alert('회원가입후 장바구니를 이용해주세요.');
				history.go(-1);
			</script>
		
	<%		
		}

	%>
	
	
	
<%
	int priceNum = Integer.parseInt(request.getParameter("priceNum"));
	int num = Integer.parseInt(request.getParameter("num"));

	CartDAO cdao = new CartDAO();
	cdao.cartInsert();

%>



</body>
</html>
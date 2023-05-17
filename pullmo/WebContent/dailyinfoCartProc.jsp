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
	String id = (String)session.getAttribute("id");
	
	if(id == null){
%>
		<script>
			alert('로그인이 필요한 서비스입니다.')
			history.go(-1)
		</script>
<%			
	} else { %>
	
		<script>
			location.href="dailyinfoCart.jsp";
		</script>
		
<%	
	}
%>

</body>
</html>
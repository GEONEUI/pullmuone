<%@page import="com.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="userbean" class="com.UserDTO">
	<jsp:setProperty property="*" name="userbean"/>
</jsp:useBean>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	UserDAO dao = new UserDAO();
	dao.updateUser(userbean);
%>

<script>
	alert("회원정보가 수정되었습니다.")
	location.href="./adminUserAll.jsp"
</script>

</body>
</html>
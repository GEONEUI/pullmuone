<%@page import="com.UserDTO"%>
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
	String id = userbean.getUser_id();
	String pw = userbean.getUser_pw();
	
	UserDAO dao = new UserDAO();
	String pass = dao.getPass(id);
	
	if(pw.equals(pass)){%>
		<script>
			location.href="./myinfoFull.jsp";
		</script>
		<% }else{ %>
		<script>
			alert("비밀번호를 확인해주세요.");
			history.go(-1);
		</script>
		<%
		}
		%>
</body>
</html>
<%@page import="com.BoardPlusDAO"%>
<%@page import="com.BoardPlusDTO"%>
<%@page import="com.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
%>


<jsp:useBean id="plusbeen" class="com.BoardPlusDTO">
	<jsp:setProperty property="*" name="plusbeen"/>
</jsp:useBean>

<%=plusbeen.getContext() %>
<%=plusbeen.getNum() %>
<%=plusbeen.getPassword() %>
<%=plusbeen.getWriter() %>

<%
	String context = request.getParameter("context");
	

	BoardPlusDAO bdao = new BoardPlusDAO();
	bdao.boardPlusInsert(plusbeen);

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



<script>
location.href="boardinfo.jsp?num=<%=plusbeen.getRef() %>";
</script>
	

</body>
</html>
<%@page import="com.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	request.setCharacterEncoding("UTF-8");
%>
    
<jsp:useBean id="boardbeen" class="com.BoardDTO">
	<jsp:setProperty property="*" name="boardbeen"/>
</jsp:useBean>



<%

	BoardDAO dao = new BoardDAO();

	dao.boardUpdate(boardbeen);
	
	response.sendRedirect("boardList.jsp");
	

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
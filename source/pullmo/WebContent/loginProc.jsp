<%@page import="com.UserDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <% 
		request.setCharacterEncoding("UTF-8");
   
		String id = request.getParameter("user_id");
   		String pw = request.getParameter("user_pw");
		
		UserDAO dao = new UserDAO();
		Vector<UserDTO> list = dao.selectAll();
		
		for(int i=0; i<list.size() ;i++){
			UserDTO dto = list.get(i);
			if(id.equals(dto.getUser_id()) && pw.equals(dto.getUser_pw())){
			
				session.setAttribute("id", id);
				session.setMaxInactiveInterval(60*10);
				
				session.setAttribute("pw", pw);
				session.setMaxInactiveInterval(60*10);
				
				Cookie cookie = new Cookie("id", id);
				cookie.setMaxAge(60*1);
				
				response.addCookie(cookie);
				
				%>
				
			<html>
			<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>Insert title here</title>
			</head>
			<body>
			
				<script>
					location.href="./index.jsp"
				</script>
			<% 
				}
			%>	
				
	<%
		}
	%>	
	
					
				<script>
					alert('아이디를 확인해주세요.')
					history.go(-1);
				</script>
			</body>
			</html>
				
				


	

	
		
	

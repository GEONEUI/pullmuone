<%@page import="com.UserDTO"%>
<%@page import="com.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	
	UserDAO dao = new UserDAO();
	UserDTO dto = dao.selectOne(id);
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table {
	margin: 0 auto;
}
		body {
			background: #fafafa;
			letter-spacing: -1.5px;
			font-family: 'Noto Sans KR', sans-serif;
			overflow-x: hidden;
			padding: 100px 0;

		}

		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		li {
			list-style: none;
		}

		a {
			text-decoration: none;
		}

		.inner {
			width: 650px;
			margin: 0 auto;
		}


		.admin {}
		
		.admin p{
			margin-bottom: 1rem;
		}

		.admin h2 {
			text-align: center;
			margin-bottom: 50px;
			font-size: 25px;
		}

		.admin ul {}

		.admin ul li {
			width: 100%;
			box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
			margin-bottom: 1rem;
		}

		.admin ul li a {
			height: 35px;
			display: flex;
			align-items: center;
			justify-content: center;
			transition: .1s;
		}

		.admin ul li a:hover {
			background: #30d46f;
			color: #fff;
			font-weight: bold;
		}
		
		button{
			margin:1rem 0;
		}

</style>
</head>
<body>

	<div class="sec_admin">
		<div class="inner">
			<div class="admin">
				<h2>회원내용변경</h2>
				<table border="1" width="650">
					<form action="adminUserinfoProc.jsp" method="post">
						<tr height="35">
							<td align="center">아이디</td>
							<td align="center"><%=dto.getUser_id() %></td>
						</tr>
						<tr height="35">
							<td width="20%" align="center">비밀번호</td>
							<td align="center"><input name="user_pw" type="password" value="<%=dto.getUser_pw() %>"></td>
						</tr>
						<tr height="35">
							<td width="20%" align="center">이름</td>
							<td align="center"><input name="user_name" type="text" value="<%=dto.getUser_name() %>"></td>
						</tr>
						<tr height="35">
							<td width="20%" align="center">전화번호</td>
							<td align="center"><input name="user_phone" type="text" value="<%=dto.getUser_phone() %>"></td>
						</tr>
						<tr height="35">
							<td width="20%" align="center">이메일</td>
							<td align="center"><input name="user_email" type="email" value="<%=dto.getUser_email() %>"></td>
						</tr>
						<tr height="35">
							<td colspan="2" align="center">
								<input type="hidden" name="user_id" value="<%=dto.getUser_id() %>">
								<input type="submit" value="회원수정"></form>
								<button onclick="location.href='./adminUserinfoDelectProc.jsp?id=<%=dto.getUser_id() %>'">회원삭제</button>
								<button onclick="location.href='adminUserAll.jsp'">뒤로가기</button>
							</td>
						</tr>
					
				</table>
			</div>
		</div>
	</div>

</body>
</html>
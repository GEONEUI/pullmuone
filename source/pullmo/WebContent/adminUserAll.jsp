<%@page import="com.UserDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>

<%
	UserDAO dao = new UserDAO();
	Vector<UserDTO> userArr = dao.userSelectAll();
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Insert title here</title>
</head>
<body>


	<div class="sec_admin">
		<div class="inner">
			<div class="admin">
				<h2>모든회원보기</h2>
				<p>아이디 클릭시 유저 상세보기</p>
				<table border="1" width="650">
					<tr height="35">
						<td width="20%" align="center">아이디</td>
						<td width="20%" align="center">비밀번호</td>
						<td width="20%" align="center">이름</td>
						<td width="20%" align="center">전화번호</td>
						<td width="20%" align="center">이메일</td>
					</tr>

					<%
						for (int i = 0; i < userArr.size(); i++) {
							UserDTO dto = userArr.get(i);
					%>
					<tr height="35">
						<td width="100" align="center"><a href="./adminUserInfo.jsp?id=<%=dto.getUser_id()%>"><%=dto.getUser_id()%></a></td>
						<td width="100" align="center"><%=dto.getUser_pw()%></td>
						<td width="100" align="center"><%=dto.getUser_name()%></td>
						<td width="100" align="center"><%=dto.getUser_phone()%></td>
						<td width="100" align="center"><%=dto.getUser_email()%></td>
					</tr>
					<%
						}
					%>
				</table>
				<button onclick="location.href='./admin.jsp'">뒤로가기</button>
			</div>
		</div>
	</div>









</body>
</html>
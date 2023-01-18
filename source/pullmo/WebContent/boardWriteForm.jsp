<%@page import="com.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html PUBLIC "-//W3C//Ddiv HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.ddiv">


<%
	


	String id = (String)session.getAttribute("id");
	String pw = (String)session.getAttribute("pw");
	

	
	UserDAO dao = new UserDAO();
	String email = dao.getEmail(id);
	

%>
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<%@ include file="front_header.jsp" %>
			<style>
				* {
					padding: 0;
					box-sizing: border-box;
					margin: 0;
				}

				body {
					letter-spacing:-1.5px;
				}

				.sec_table {
					padding: 50px 0;
				}


				h2 {
					padding: 20px 0;
					font-size: 26px;
					border-bottom: 3px solid #000;
					margin-bottom: 25px;
				}

				.line {
					display: flex;
					margin-bottom: 10px;
					font-size:19px;
				}

				.line .name {
					width: 30%;
					padding-left: 15px;
				}

				.line .input {
					width: 70%;
				}

				.line .input input {
					width: 100%;
					height: 35px;
					padding-left: 15px;
					border: 1px solid #ccc;
				}
				
				.line .textarea{
					width: 70%;
				}
				
				.line .textarea textarea{
					width: 100%;
					height: 350px;
					padding: 15px;
				}
				
				form{
					font-size:20px;
				}
				
				.btn{
					width: 70%;
				    border-radius: 25px 0 25px 0;
				    height: 50px;
				    display: flex;
				    align-items: center;
				    justify-content: center;
				    background: #5e9731;
				    color: #fff;
				    text-decoration: none;
				    font-size: 18px;
				    font-weight: bold;
				    border: none;
				    cursor: pointer;
				    margin-left:auto;
				}
			</style>
	</head>

	<body>
		<%@ include file="header.jsp" %>

			<div class="sec_table">
				<div class="inner">
					<div class="table">
						<h2>게시글 작성</h2>
						<form action="boardWriteFormProc.jsp" method="post">
							<div class="line">
								<div class="name">작성자</div>
								<div class="input"><%=id %></div>
							</div>
							<div class="line">
								<div class="name">이메일</div>
								<div class="input"><%=email %></div>
							</div>
							<div class="line">
								<div class="name">글제목</div>
								<div class="input"><input type="text" name="subject"></div>
							</div>
							<div class="line">
								<div class="name">글내용</div>
								<div class="textarea"><textarea type="text" name="context"></textarea></div>
							</div>
							<input type="hidden" name="writer" value="<%=id %>">
							<input type="hidden" name="password" value="<%=pw %>">
							<input type="hidden" name="email" value="<%=email %>">
							<input type="submit" class="btn" value="작성완료"> 
						</form>
					</div>
				</div>
			</div>


			<%@ include file="footer.jsp" %>
	</body>

	</html>
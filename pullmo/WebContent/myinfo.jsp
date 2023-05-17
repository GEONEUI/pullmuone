<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = (String)session.getAttribute("id");



%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file = "front_header.jsp" %>
<style>
	
	
	.sec_myinfo{
		background: #fcfcfc;
		width:100%;
		padding-bottom: 300px;
		padding-top : 50px;
	}
	.myinfo{
		width:650px;
		margin:0 auto;
		
	}
	
	.myinfo h2{
		font-size:30px;
		padding: 25px 0;
		border-bottom: 1px solid #ccc;
		letter-spacing: -1.5px;
	}
	
	.myinfo p{
		margin: 25px 0;
		font-size:23px;
		letter-spacing: -1.5px;
	}
	
	.line{
		width:100%;
		display:flex;
		height:60px;
		border:1px solid #ccc;
		margin-bottom:15px;
	}
	
	.line:last-child{
		background:#fff;
	}
	
	.line .form_name{
		width:20%;
		display:flex;
		align-items:center;
		padding:0 20px;
		font-size:18px;
		letter-spacing: -1.5px;
		color:#444;
	}
	.line .form_input{
		width:100%;
		display:flex;
		align-items:center;
		font-size:18px;
		letter-spacing: -1.5px;
		overflow: hidden;
	}
	
	.line .form_input input{
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    font-size: 16px;
	    letter-spacing: -1.3px;
	    height: 100%;
	    font-weight: 400;
	    color:#444;
	    border:none;
 	    width: 100%;
 	    outline: none;
	}
	
	.myinfoBtn{
	width: 100%;
    border-radius: 25px 0 25px 0;
    height: 65px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #94dc5c;
    color: #fff;
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
    border: none;
    cursor:pointer;
	}
	
	
	
	
	
</style>
</head>
<body>
	<%@ include file = "header.jsp" %>
	<div class="sec_myinfo">
		<div class="myinfo">
		<h2>내정보 확인</h2>
		<p>고객님의 개인정보보호를 위해<br>
		   비밀번호를 입력해주세요.
		</p>
		<form class="form" action="myinfoProc.jsp" method="post">
			<div class="line">
				<div class="form_name">아이디</div>
				<div class="form_input"><%=id %></div>
			</div>
			<div class="line">
				<div class="form_name">비밀번호</div>
				<div class="form_input"><input type="password" name="user_pw"></div>
			</div>
			<input type="hidden" name="user_id" value="<%=id %>">
			<input class="myinfoBtn" type="submit" value="확인">
		</form>
	</div>
	</div>
	

	<%@ include file = "footer.jsp" %>
</body>
</html>
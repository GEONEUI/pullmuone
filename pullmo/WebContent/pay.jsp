<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>풀무원 녹즙</title>
<style>
	@import url("https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css");
	body{
		background: #fff;
	    line-height: 1;
	    font-family: 'Noto Sans KR', sans-serif;
	    overflow-x: hidden;
	    padding-top: 200px;
	    letter-spacing: -1.5px;
	}
	
	
	
	.login_intro{
		display:flex;
		align-items:center;
		justify-content:center;
	}
	
	
	.login_intro h2{
		text-align:center;
		padding:30px 0;
	}

	.login_intro .logBtn{
		border-radius: 25px 0 25px 0;
    	box-shadow: 0 0 20px 0 rgb(0 0 0 / 5%);
    	height:50px;
    	width:120px;
    	display:flex;
    	align-items:center;
    	justify-content:center;
    	background: #94dc5c;
    	color: #fff;
    	font-size:18px;
    	font-weight:bold;
 
	}
	
	
	.item{
		display:flex;
		padding-bottom:50px;
	}
	
	
	.item li{margin-righ}
	
	.item li a{}	

	
</style>
</head>
<%@ include file="front_header.jsp"%>
<body>
	<%@ include file="header.jsp"%>
	<div class="sec_login_intro">
		<div class="inner">
			<div class="login_intro">
				<div class="intro_box">
					<h2>결제방식을 선택해주세요.</h2>
					<ul class="item">
						<li><a class="logBtn" href="./login.jsp">카드결제</a></li>
						<li><a class="logBtn" href="./login.jsp">휴대폰결제</a></li>
						<li><a class="logBtn" href="./login.jsp">카카오페이</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
		<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
</body>
</html>
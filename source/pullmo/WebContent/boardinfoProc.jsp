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
		background: #fafafa;
	    line-height: 1;
	    font-family: 'Noto Sans KR', sans-serif;
	    overflow-x: hidden;
	    padding-top: 200px;
	    letter-spacing: -1.5px;
	}
	
	.login_intro{
		width:600px;
		margin:0 auto;
		display: flex;
	    align-items: center;
	    justify-content: center;
	    flex-direction: column;
	}
	
	.login_intro h2{
		font-weight:normal;
		text-align:center;
	}
	
	.login_intro p{
		text-align: center;
	    color: #666;
	    font-weight: 400;
	    line-height: 27px;
	}
	
	.login_intro .logBtn{
		width:80%;
		border-radius: 25px 0 25px 0;
    	box-shadow: 0 0 20px 0 rgb(0 0 0 / 5%);
    	height:50px;
    	display:flex;
    	align-items:center;
    	justify-content:center;
    	background: #94dc5c;
    	color: #fff;
    	text-decoration:none;
    	font-size:18px;
    	font-weight:bold;
 
	}
	
	.login_logo{
		text-align:center;
	}
	
	.login_intro_check{
		text-align:center;
		margin-top: 3rem;
	}
	.login_intro_check i{
		font-size:65px;
		color:#86c852;
		font-weight:normal;
	}
	
</style>
</head>
<body>
	<div class="sec_login_intro">
		<div class="inner">
			<div class="login_intro">
				<div class="login_logo">
					<a href="./index.jsp"><img src="./image/account_logo.png" alt=""></a>
				</div>
				<div class="login_intro_check">
					<i class="fa-regular fa-circle-check"></i>
				</div>
				<h2>장바구니에 담겼습니다.</h2>
				</p>
				<a style="cursor:pointer; margin-bottom:15px;" class="logBtn" onclick="history.go(-2)">쇼핑하기</a>
				<a class="logBtn" href="dailyinfoCart.jsp">장바구니</a>
			</div>
		</div>
	</div>
	<script>
		if(${id} == """){
			alert('손님 ㅃㅇ');
			history.go(-1);
		}
	</script>
</body>
</html>
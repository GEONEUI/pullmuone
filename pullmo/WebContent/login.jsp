<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
Cookie[] cookies = request.getCookies();



String cookieID = "";

if(cookies != null){
	for(int i=0; i<cookies.length ;i++){
		if(cookies[i].getName().equals("id")){
			cookieID = cookies[i].getValue();
			break;
		}
	}
}
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>풀무원로그인</title>
	<style>
		*{
			padding: 0;
			margin: 0;
			box-sizing:border-box;
		}

		li{
			list-style:none;
		}

		a{
			text-decoration: none;
			color: #333;
		}
		body{
			background: #fafafa;
			line-height: 1;
			font-family: 'Noto Sans KR', sans-serif;
			overflow-x:hidden;
			padding-top: 100px;
		}

		.sec_login{
			width: 100vw;
			display:flex;
			align-items:center;
			justify-content:center;
			padding: 80px 0;
		}
	

		/* login */
		.login{width: 600px;}


		.login_logo{text-align: center; margin-bottom: 3rem;}


		/* logo_info */
		.login_info{display:flex;}
		/*  */
		.login_info .login_text{width: 50%;}
		.login_info .login_text h2{
				letter-spacing: -1.5px;
				color: #444;
				font-weight: 300;
				font-size: 20px;
				flex: 1;
				line-height:28px;
		}

		.login_info .login_text h2 span{
			font-weight: bold;
		}
	
		.login_info .login_form{width: 50%;}
		.login_info .login_form input{margin-bottom: 0.6rem;} 
		.login_info .login_form input{width: 100%; padding-left: 0; height: 48px; padding-left: 0.8rem; border:1px solid #e5e5e5;}
		.login_info .login_form input[type="submit"]{
			cursor:pointer;
		}


		.login_info .idpw{
			display:flex;
			justify-content:space-around;
		}
		.login_info .idpw li{}
		.login_info .idpw li:first-child a{border-left: 0;}
		.login_info .idpw li a{
					line-height: 1;
					font-size: 14px;
					color: #666;
					letter-spacing: -1px;
					border-left: 1px #e5e5e5 solid;
					display:block;
					padding: 0px 15px;
		}



		.sec_footerAD{background: rgba(0,0,0,0.03); padding: 50px 0;}
		.footerAD{width: 600px; margin:0 auto;}
		.footerAD h2{
			 font-size: 21px;
			line-height: 30px;
			letter-spacing: -3px;
			color: #333;
			font-weight: normal;
			margin-bottom: 1.8rem;
		}
		.footerAD h2 span{color: #f18a2e; }
		.footerAD .footerAD_icon{display:flex; flex-wrap:wrap;}
		.footerAD .footerAD_icon li{width: 50%; display:flex;align-items: center;}
		.footerAD .footerAD_icon li:nth-child(1){margin-bottom: 0.8rem;}
		.footerAD .footerAD_icon li:nth-child(2){margin-bottom: 0.8rem;}
		.footerAD .footerAD_icon li figure{width: 48px; height: 48px; background: #f18a2e; border-radius:50%;}
		.footerAD .footerAD_icon li figure img{width: 100%;}
		.footerAD .footerAD_icon li p{
			padding-left: 20px;
			font-size: 16px;
			color: #666;
			letter-spacing: -1px;
		}



	</style>
</head>
<body>
	<div class="sec_login">
		<div class="inner">
			<div class="login">
				<div class="login_logo">
					<a href="./index.jsp"><img src="./image/account_logo.png" alt=""></a>
				</div>
				<div class="login_info">
					<div class="login_text">
						 <h2><span>일반회원</span>으로<br> 로그인합니다.</h2>
					</div>
					<div class="login_form">
						<form action="loginProc.jsp" method="post">
								<input type="text" placeholder="아이디" name="user_id" value="<%=cookieID %>">
								<input type="password" placeholder="비밀번호" name="user_pw">
								<input type="submit" value="로그인">
						</form>
						<ul class="idpw">
							<li><a href="./join.jsp">회원가입</a></li>
							<li><a href="">아이디 찾기</a></li>
							<li><a href="">비밀번호 찾기</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="sec_footerAD">
		<div class="inner">
			<div class="footerAD">
				<h2><span>오직 풀무원녹즙 회원만!</span><br>
					회원가입하고 다양한 혜택을 누리세요
				</h2>
				<ul class="footerAD_icon">
					<li><figure><img src="./image/l_icon1.png" alt=""></figure><p>건강을 위한 최고의 파트너!</p></li>
					<li><figure><img src="./image/l_icon1.png" alt=""></figure><p>건강한 습관의 시작!</p></li>
					<li><figure><img src="./image/l_icon1.png" alt=""></figure><p>밋과 건강을 한 번에!</p></li>
					<li><figure><img src="./image/l_icon1.png" alt=""></figure><p>음용할수록 늘어나는 혜택!</p></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>
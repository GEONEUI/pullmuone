<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style>
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
			color: #333;
		}

		.inner {
			width: 650px;
			margin: 0 auto;
		}


		.admin {}

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
	</style>
<title>Insert title here</title>
</head>
<body>

	<div class="sec_admin">
		<div class="inner">
			<div class="admin">
				<h2>관리자 페이지 입니다.</h2>
				<ul>
					<li><a class="btn" href="./index.jsp">홈페이지로</a></li>
					<li><a class="btn" href="">관리자 계정정보 변경</a></li>
					<li><a class="btn" href="./adminUserAll.jsp">회원목록조회</a></li>
					<li><a class="BlackBtn" href="">블랙모드</a></li>
				</ul>
			</div>
		</div>
	</div>








<%
String id = (String) session.getAttribute("id");
%>

	<%
	if(!id.equals("admin")){%>
	
	<script>
		alert("권한이 없습니다.")
		history.go(-1);
	</script>	
<%
	}
%>

<script>
	var imgElme = document.
	BlackBtn.addEventListener('click', function(){
		document.body.style= "background:#000 !important";
		document.body.style= "background:#000 !important";
	});
</script>
</body>
</html>
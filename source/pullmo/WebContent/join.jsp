<%@page import="com.UserDTO"%>
<%@page import="com.UserDAO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!doctype html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>풀무원로그인</title>
	<style>
		*{
			padding: 0;
			bottom: 0;
			box-sizing:border-box;
		}
		body{
			background: #fafafa;
			line-height: 1;
			font-family: 'Noto Sans KR', sans-serif;
			overflow-x:hidden;
		}

		.sec_login{
			width: 100vw;
			height: 100vh;
			display:flex;
			align-items:center;
			justify-content:center;
		}

		.login{width: 600px;}
		.login .login_logo{text-align: center; margin-bottom: 3rem;}


		.login .login_form{}
		.login .login_form h2{font-size: 18px; color: #333;letter-spacing: -2px; font-weight: normal; font-weight: 400; }
		.login .login_form form{}
		.login .login_form form .line{display:flex; justify-content:space-between; height: 50px;
		background: #fff; border:1px solid #ccc; margin-bottom: 0.5rem;}
		.login .login_form form .line:first-child label{width: 20%; display:flex; align-items:center; padding-left: 1rem; height: 100%;  font-size: 14px;letter-spacing: -1.7px;color: #333;font-weight: 400; }
		.login .login_form form .line:first-child input{width: 65%; height: 48px; font-size: 16px; letter-spacing: -1.2px; color: #333; font-weight: 400; padding-left: 2rem; border:none;}
		.login .login_form form .line:first-child .idcheck{width: 17%; display:flex; align-items:center; justify-content:center; background: #333; color: #fff; cursor:pointer;}

		.login .login_form form .line{display:flex; justify-content:space-between; height: 50px;
		background: #fff; border:1px solid #ccc;}
		.login .login_form form .line label{width: 20%; height: 100%; font-size: 14px;letter-spacing: -1.7px;color: #333;font-weight: 400; display:flex; align-items:center; padding-left: 1rem; }
		.login .login_form form .line input{width: 82%;  font-size: 16px; letter-spacing: -1.2px; color: #333; font-weight: 400; padding-left: 2rem; outline: none; border: none;}


		.login .login_form form .line:last-child input{width: 100%; padding-left: 0;}

		.login .login_form form .line input[type="submit"]{
			cursor:pointer;
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
				<div class="login_form">
					<h2>약관동의 / 회원정보 입력</h2>
					<form action="joinProc.jsp" method="get">
						<div class="line">
							<label>아이디</label>
							<input type="text" placeholder="아이디 (영문/숫자 조합)" name="user_id" id="user_id">
							<div class="idcheck">중복확인</div>
						</div>
						<div class="line">
							<label>비밀번호</label>
							<input type="password" placeholder="비밀번호 (영문/숫자 조합)" name="user_pw" id="user_pw">
						</div>
						<div class="line">
							<label>비밀번호 확인</label>
							<input type="password" placeholder="비밀번호를 다시 입력해주세요." name="user_pw2" id="user_pw2">
						</div>
						<div class="line">
							<label>이름</label>
							<input type="text" placeholder="이름을 입력해주세요." name="user_name" id="user_name">
						</div>
						<div class="line">
							<label>휴대폰번호</label>
							<input type="text" placeholder="ex) 01012345678" name="user_phone" id="user_phone">
						</div>
						<div class="line">
							<label>이메일</label>
							<input type="email" placeholder="이메일을 입력해주세요." name="user_email" id="user_email">
						</div>
						<div class="line">
							<input type="submit" value="회원가입"  onclick="return check();">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<%
		UserDAO dao = new UserDAO();
		Vector<UserDTO> v = dao.userSelectAll();
	%>
			
			<script>
				var user_id = document.querySelector("#user_id");
				var user_pw = document.querySelector("#user_pw");
				var user_pw2 = document.querySelector("#user_pw2");
				var user_name = document.querySelector("#user_name");
				var user_phone = document.querySelector("#user_phone");
				var user_email = document.querySelector("#user_email");
				var idcheckElem = document.querySelector(".idcheck");
				var flag = false;
				
				var idcheckBtn = document.querySelector('.idcheck');
				
				idcheckBtn.addEventListener('click', function(){
					
					<%
					for(int i=0; i<v.size() ;i++){
						UserDTO user = v.get(i);
					%>
					
						if(user_id.value == '<%=user.getUser_id() %>'){
							alert("이미 존재하는 아이디 입니다.");
							return;
						}
					
					<%		
					}
					%>
					
					alert('사용 가능한 아이디 입니다.');
					flag = true;
				});
				
	
		
		function check(){
			if(flag){
				//숫자만
				const regex = /^[0-9]+$/;
				//한글만
				const regexK = /^[ㄱ-ㅎ|가-힣]+$/;
				
				//값이 비었을때 유효성검사
				if(user_id.value.length == 0){ 
					alert("아이디를 입력해주세요.");
					user_id.focus(); // 포커스를 이동시켜 바로 아이디를 입력할 수 있게
					return false;
				};
				if(user_pw.value.length == 0){ 
					alert("비밀번호를 입력해주세요.");
					user_pw.focus(); // 포커스를 이동시켜 바로 아이디를 입력할 수 있게
					return false;
				};
				//비밀번호 확인 유효성검사
				if(user_pw.value != user_pw2.value){ 
					alert("비밀번호를 일치시켜주세요.");
					user_pw.focus(); // 포커스를 이동시켜 바로 아이디를 입력할 수 있게
					return false;
				};
				if(user_name.value.length == 0){ 
					alert("이름을 입력해주세요.");
					user_name.focus(); // 포커스를 이동시켜 바로 아이디를 입력할 수 있게
					return false;
				};
				if(user_phone.value.length == 0){ 
					alert("휴대전화를 입력해주세요.");
					user_phone.focus(); // 포커스를 이동시켜 바로 아이디를 입력할 수 있게
					return false;
				};
				if(user_email.value.length == 0){ 
					alert("이메일을 입력해주세요.");
					user_email.focus(); // 포커스를 이동시켜 바로 아이디를 입력할 수 있게
					return false;
				};
				if(!regex.test(user_phone.value)){
					alert("전화번호에 숫자만 입력해주세요.");
					user_phone.focus();
					return false;
				}
				if(regexK.test(user_id.value)){
					alert("아이디는 영문 + 숫자로만 입력해주세요.");
					user_id.focus();
					return false;
				}
				if(regexK.test(user_pw.value)){
					alert("비밀번호는 영문 + 숫자로만 입력해주세요.");
					user_pw.focus();
					return false;
				}
				if(!regexK.test(user_name.value)){
					alert("이름은 한글로 입력해주세요.");
					user_name.focus();
					return false;
				}
				
			}else{
				alert("아이디 중복확인을 진행해주세요.");
				return false;
			}
			
			
			

		}
			

	
	

	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>

	/* notice */
	#notice{
		border-top:1px solid #e5e5e5;
		border-bottom:1px solid #e5e5e5;
	}
	.notice{
		height: 60px;
		display:flex;
		align-items:center;
	}
	.notice_title{
		color: #333;
		font-weight: bold;
		margin-right: 1.5rem;
		letter-spacing: -1.15px;
	}

	.notice a{
		color: #333;
		display:inline-block;
		letter-spacing: -1.15px;
	}

	#footer{
		padding: 20px 20px 40px 20px;
		background: #f5f5f5;
	}

	/* f_menu */
	.f_menu{margin-bottom: 0.6rem;}
	.f_menu .bold{font-weight: bold; }
	.f_menu ul{display:flex;}
	.f_menu ul li{}
	.f_menu ul li a{
			display: block;
			padding: 20px 15px;
			font-size: 14px;
			color: #333333;
			letter-spacing: -1.05px;
	}

	.logo_copy_area{display:flex;}

	/* f_logo */
	.logo_copy_area .f_logo{
		margin-right:40px;
	}
	/* f_copy */
	.logo_copy_area .f_copy{}
	.logo_copy_area .f_copy p{
		display: block;
		font-size: 14px;
		font-weight: bold;
		color: #333333;
		margin-bottom: 0.7rem;
		letter-spacing: -1.08px;
	}
	.logo_copy_area .f_copy .copy_info{display:flex;}
	.logo_copy_area .f_copy .copy_info li{
		    display: inline-block;
			white-space: normal;
			line-height: 23px;
			font-size: 13px;
			color: #333333;
			letter-spacing: -0.98px;
			padding-right: 15px;
	}
	.logo_copy_area .f_copy .copy_info li .f_title{
		color: #666;
		padding-right: 3px;
	}
	.logo_copy_area .f_copy .copy_info li .f_body{
		color: #222;
	}

	em{
	color: #222;
    font-size: 10px;
    display: block;
    text-transform: uppercase;
    padding-top: 16px;
    font-family: Roboto, Sans-serif;
    letter-spacing: -0.25px;
	}






</style>
<div id="notice">
	<div class="inner">
		<div class="notice">
			<ul>
				<li><span class="notice_title">공지사항</span><a href="">풀무원녹즙 일부 품목 가격 조정 안내</a></li>
			</ul>
		</div>
	</div>
</div>
<div id="footer">
	 <div class="inner">
		<div class="footer">
			<div class="f_menu">
				<ul>
					<li><a href="">홈</a></li>
					<li><a href="">브랜드소개</a></li>
					<li><a href="" class="bold">개인정보처리방침</a></li>
					<li><a href="">사업소개</a></li>
					<li><a href="">사업소개</a></li>
					<li><a href="">이메일무단수집</a></li>
				</ul>
			</div>
			<div class="logo_copy_area">
				<div class="f_logo">
					<img src="./image/f_logo.png" alt="">
				</div>
				<div class="f_copy">
					<p>(주)풀무원녹즙클론</p>
					<ul class="copy_info">
						<li><span class="f_title">대표이사</span><span class="f_body">유건의</span></li>
						<li><span class="f_title">대표전화</span><span class="f_body">010-7121-8135</span></li>
						<li><span class="f_title">통신판매번호</span><span class="f_body">이대중앙정보학원</span></li>
						<li><span class="f_title">사업자등록번호</span><span class="f_body">930-010-7121</span></li>
					</ul>
					<ul class="copy_info">
						<li><span class="f_title">호스팅제공자</span><span class="f_body">(주)풀무원녹즙클론</span></li>
						<li><span class="f_title">CS이메일</span><span class="f_body">dbrjsdml@naver.com</span></li>
						<li><span class="f_title">사업자 주소</span><span class="f_body">본사이트는 포트폴리오 사이트입니다.</span></li>
					</ul>
					<ul class="copy_info">
						<li><span class="f_title">고객기쁨센터</span><span class="f_body">010-7121-8135 (평일 09:00 ~ 18:00 점심시간 12:00 ~13:00 /토,일,공휴일 휴무)</span></li>
						<li><span class="f_title">CS이메일</span><span class="f_body">dbrjsdml@naver.com</span></li>
						<li><span class="f_title">사업자 주소</span><span class="f_body">본사이트는 포트폴리오 사이트입니다.</span></li>
					</ul>
					<em>본사이트는 상업적목적이 아닌 포트폴리오로 제작된 사이트입니다.</em>
				</div>
			</div>
			
		</div>
	 </div>
</div>
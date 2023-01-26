<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<style>
	
	/* header */
	#header{
		border-bottom:1px solid #ebebeb;
	}
	
	.header{
		display:flex;
		justify-content:space-between;
		align-items:center;
	}

	.header h1 img{
		width: 82px;
	}

	.header .logo-gnb-area{
		display:flex;
		height: 141px;
		align-items: center;
		justify-content:space-between;
	}
	.header .logo-gnb-area .logo{

	}
	.header .logo-gnb-area .gnb{}
	.header .logo-gnb-area .gnb ul{
		display:flex;
		margin-top: 38px;
   		margin-left: 50px;
	}
	.header .logo-gnb-area .gnb ul li{}
	.header .logo-gnb-area .gnb ul li a{
		display: flex;
		font-family: 'Noto Sans KR';
		align-items: center;
		padding: 0 20px;
		font-size: 16px;
		font-weight: 500;
		letter-spacing: -1.1px;
		color: #333;
		transition: all 0.3s;
		font-weight: bold;
	}

	
	.serarch{
	
	}
	.search-area {
		display: flex;
		align-items: center;
		width: 240px;
		height: 50px;
		padding: 0 14px;
		border: solid 1px #e5e5e5;
		background-color: #fff;
		border-radius: 16px 0;
	}

	#search {
		width: 25px;
		height: 25px;
		background: white;
	}

	#search-button {
		background: white;
		border: white;
		cursor:pointer;
	}

	#input {
		width: 170px;
	    height: 42px;
	    outline: none;
	    border: none;
	}


	


</style>

<div id="header">
	<div class="inner">
		<div class="header">
			<div class="logo-gnb-area">
				<h1 class="logo"><a href="/pullmo/"><img src="./image/account_logo.png" alt=""></a></h1>
				<div class="gnb">
					<ul>
						<li><a href="daily.jsp">매일배송</a></li>
						<li><a href="product.jsp">택배배송</a></li>
						<li><a href="taste.jsp">시음선물</a></li>
						<li><a href="event.jsp">이벤트</a></li>
					</ul>
				</div>
			</div>
			<div class="serarch" style="text-align:right">
					<form class="search-area" action="/product/search">
						<input type="text" id="input" name="searchKeyword" value="" title="검색어 입력">
						<button id="search-button">
							<img src="./image/daily-search.png" alt="" id="search">
						</button>
					</form>
			</div>
		</div>
	</div>
</div>

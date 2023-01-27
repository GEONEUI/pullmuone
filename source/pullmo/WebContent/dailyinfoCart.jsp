<%@page import="com.CartDTO"%>
<%@page import="com.CartDAO"%>
<%@page import="com.ProductDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	CartDAO cdao = new CartDAO();
	Vector<CartDTO> v = cdao.selectOne(id);
	int sum = 0;
	int result = 0;
	
%>

<!DOCTYPE>
<html>

<%@ include file="front_header.jsp"%>
<style>
	body{
		letter-spacing:-1.5px;
	}

   
   .cartivew{
   		display:flex;
   		justify-content:space-between;
   }
   
   .cartivew > div:first-child{
   		width:65%;
   		
   }
   .cartivew > div:last-child{
	   	width:30%;
	   	padding: 50px 15px;
   }
   
   
   .cartivew > div:last-child h2{
   		font-weight:bold;
   		font-size:22px;
   		padding-bottom:45px;
   }
   
   .cartivew > div:last-child p{
   		font-size:20px;
   		padding-bottom:30px;
   }
   
   .cartivew > div:last-child a{
   		width:100%;
   		height:50px;
   		background:#62aa26;
   		color:#fff;
   		display:flex;
   		align-items:center;
   		justify-content:center;
   		cursor:pointer;
   }
   
   
   .cartlist{
   		display:flex;
   		padding: 25px 15px 25px 15px;
   		margin-bottom:25px;
   		box-shadow: rgba(99, 99, 99, 0.2) 0px 2px 8px 0px;
   		position:relative;
   }
   
   .cartlist a{
   		position:absolute;
   		top:0;
   		right:0;
   		width:50px;
   		height:50px;
   		display:flex;
   		align-items:center;
   		justify-content:center;
   }
   
   
    .cartlist li:nth-child(2){
    	padding:35px 0;
    }
    
    .cartlist li:nth-child(3){
    	margin-left: auto;
    	display:flex;
    	align-items:center;
    	justify-content:center;
    }
   
   .cartlist li img{
   		width:150px;
   		margin-right:15px;
   }
   
   .cartlist li .info{
   		padding-bottom:25px;
   }
   
   .cartlist li h2{
   		font-weight:bold;
   		font-size:22px;
   		padding-bottom:20px;
   }
   
   .cartlist li p{
   		font-size:20px;
   }
   
   .cartview{
	   font-size: 32px;
	    padding: 35px 0;
	    font-weight: normal;
	    color: #555;
   }
   
   
	
	
</style>
<body>
	<%@ include file="header.jsp"%>
	
		
	<div class="sec_cartview">
		<div class="inner">
			<h2 class="cartview">장바구니</h2>
			<div class="cartivew">
				<div class="cartivew_item">
				
					<%
						if(v.size() == 0){%>
						<p>장바구니가 비어있습니다.</p>
					<%	
						} else {
				
						for(int i=0; i<v.size() ;i++){
							CartDTO d = v.get(i);
							result = d.getPricenum() * d.getPrice();
							sum += d.getPricenum() * d.getPrice();

						
					%>
						<ul class="cartlist">
							<li>
								<img src="<%=d.getMainimg() %>">
								<a href="dailyDelete.jsp?num=<%=d.getNum() %>&priceNum=<%=d.getPricenum() %>">X</a>
							</li>
							<li>
								<h2 class="title"><%=d.getName() %></h2>
								<p class="info"><%=d.getInfo() %></p>
								<p class="pricenum">수량 : <%=d.getPricenum() %></p>
							</li>
							<li>
								<p class="price"><span style="color:#62aa26 ;font-size:24px; font-weight:bold; margin-right:3px;"><%=result %></span>원</p>
							</li>
						</ul>
						
						
					<%	
							}
						}
					%>
					
				</div>
				<div class="cartivew_item">
					<h2>최종 결제 금액</h2>
					<p>상품금액 : </p>
					<p>배송비 : 0</p>
					<p>총 결제할 금액 : <%=sum %></p>
					<a id="order">주문하기</a>
				</div>
			</div>
		</div>
	</div>
<style>
	.sec_modal {
		position: fixed;
		top: 0;
		left: 0;
		right: 0;
		bottom: 0;
		width: 100%;
		height: 100%;
		display: none;
	}

	.sec_modal.active {
		display: block;
	}


	.sec_modal::before {
		width: 100%;
		height: 100%;
		background: #000;
		position: absolute;
		top: 0;
		left: 0;
		opacity: 90%;
		content: "";
	}


	.modal {
		width: 550px;
		height: 550px;
		background: #fff;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		display: flex;
		align-items: center;
		justify-content: center;
	}

	.modal h2 {
		text-align: center;
		margin-bottom: 45px;
		font-size: 26px;
	}


	.item {
		display: flex;
		width: 100%;
		justify-content: space-around;
	}

	.item li a {
		padding: 20px;
		font-size: 18px;
		cursor:pointer;
	}

	.button {
		position: absolute;
		top: 5%;
		right: 5%;
	}
</style>
<div class="sec_modal">
	<div class="inner">
		<div class="modal">
			<div class="intro_box">
				<h2>결제방식을 선택해주세요.</h2>
				<ul class="item">
					<li><a id="cardpay" class="logBtn"><i class="fa-regular fa-credit-card"></i> 카드결제</a></li>
					<li><a id="pay" class="logBtn"><i class="fa-solid fa-mobile-screen-button"></i> 휴대폰결제</a></li>
					<li><a id="kakao" class="logBtn"><i class="fa-brands fa-kickstarter"></i> 카카오페이</a></li>
				</ul>
				<button class="button">X</button>
			</div>
		</div>
	</div>
</div>



<!-- 결제카카오-->
<form name="payForm" accept-charset="EUC-KR" style="display:none;">
	<input name="TYPE" value="P" />
	<input name="PAYMETHOD" value="KAKAOPAY" />
	<input name="CERTTYPE" value="01" />
	<input name="CPID" value="CTS10273" />
	<input name="ORDERNO" value="20230105112916" />
	<input name="PRODUCTTYPE" value="1" />
	<input name="AMOUNT" value="<%=sum %>" />
	<input name="PRODUCTNAME" value="테스트상품" />
	<input name="PRODUCTCODE" value="A001" />
	<input name="USERID" value="tester" />
</form>

<!-- 신용카드-->
<form name="payForm2" accept-charset="EUC-KR" style="display:none;">
	<input name="TYPE" value="P" />
	<input name="PAYMETHOD" value="CARD" />
	<input name="CERTTYPE" value="01" />
	<input name="CPID" value="CTS15178" />
	<input name="ORDERNO" value="20230126200419" />
	<input name="PRODUCTTYPE" value="1" />
	<input name="AMOUNT" value="<%=sum %>" />
	<input name="PRODUCTNAME" value="테스트상품" />
	<input name="PRODUCTCODE" value="A001" />
	<input name="USERID" value="tester" />
</form>

<!-- 휴대폰결제 -->
      <form name="payForm3" accept-charset="EUC-KR" style="display:none;">
            <input name="TYPE" value="P"/>
            <input name="PAYMETHOD" value="MOBILE"/>
            <input name="CERTTYPE" value="01"/>
            <input name="CPID" value="CTS10273"/>
            <input name="ORDERNO" value="20230127095247"/>
            <input name="PRODUCTTYPE" value="1"/>
            <input name="AMOUNT" value="<%=sum %>"/>
            <input name="PRODUCTNAME" value="테스트상품"/>
            <input name="PRODUCTCODE" value="A001"/>
            <input name="USERID" value="tester"/>
        </form>




<script>

	var order = document.querySelector('#order');
	var sec_modal = document.querySelector('.sec_modal');
	var buttonElem = document.querySelector('.button');
	var kakaopay = document.querySelector('#kakao');
	var cardpay = document.querySelector('#cardpay');
	var pay = document.querySelector('#pay');

	console.log(order);
	console.log(cardpay);

	//모달찰 열기
	order.addEventListener('click', function () {
		sec_modal.classList.add('active');
	});

	//모달창 닫기
	buttonElem.addEventListener('click', function () {
		sec_modal.classList.remove('active');
	});



	//카카오페이 열기
	kakaopay.addEventListener('click', function () {
		kakapay();
	});


	//신용카드 열기
	cardpay.addEventListener('click', function () {
		card();
	});
	
	
	//휴대폰결제
	pay.addEventListener('click', function () {
		phonepay();
	});



	//카카오
	function kakapay() {
		var pf = document.payForm;
		var fileName = "https://apitest.kiwoompay.co.kr/pay/link";
		var KIWOOMPAY = window.open("", "KIWOOMPAY", "width=468,height=750");
		pf.target = "KIWOOMPAY";
		pf.action = fileName;
		pf.method = "post";
		pf.submit();
	}


	//신용카드
	function card() {
		var pf = document.payForm2;
		var fileName = "https://apitest.kiwoompay.co.kr/pay/link";
		var KIWOOMPAY = window.open("", "KIWOOMPAY", "width=468,height=750");
		pf.target = "KIWOOMPAY";
		pf.action = fileName;
		pf.method = "post";
		pf.submit();
	}
	
	
	//신용카드
	function phonepay() {
       	var pf = document.payForm3;
        var fileName = "https://apitest.kiwoompay.co.kr/pay/link";
       var KIWOOMPAY = window.open("", "KIWOOMPAY", "width=468,height=750");
        pf.target = "KIWOOMPAY";
        pf.action = fileName;
        pf.method = "post";
        pf.submit();
        

    }

</script>

	<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
	
	
	


	
</body>
</html>
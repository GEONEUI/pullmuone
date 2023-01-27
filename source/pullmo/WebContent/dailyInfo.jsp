<%@page import="com.ProductDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String id = (String)session.getAttribute("id");
	if(id == null){
		id = "손님";
	}
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	ProductDAO pdao = new ProductDAO();
	ProductDTO pdto = pdao.productSelectOne(num);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<%@ include file="front_header.jsp"%>
<style>
	body{
		letter-spacing:-1.5px;
	}   
	.infovisual{
		display:flex;
		justify-content:space-between;
		padding: 50px 0;
	}
	.infovisual > div:first-child{
		display:flex;
		align-items:center;
		justify-content:center;
		width:550px;
	}
	
	.infovisual > div:first-child img{
		width:100%;
	}
	
	.infovisual > div:last-child{
		width:45%;
		padding:40px;
	}
	
	.info_item h2{
		font-size:32px;
		margin-bottom:13px;
	}
	
	.info_item .info{
		color:#666;
		font-size:18px;
	}
	
	.info_item .price{
		color:#333;
		font-size:25px;
		text-align:right;
		font-weight:bold;
		padding:40px 0;
		border-bottom: 1px solid #ebebeb;
	}
	
	.info_item .price span{
		color:#999;
		font-size:14px;
		margin-bottom:25px;
		border-bottom: 1px solid #ebebeb;
	}
	
	
	.btn_item{
		display:flex;
		justify-content:flex-end;
	}
	
	
	.btn_item li:first-child{
		margin-right:20px;
	}
	
	.btn_item li a, input{
		border-radius: 20px 0;
	    font-size: 18px;
	    font-weight: 400;
	    width: 140px;
   		height: 70px;
   		display:flex;
   		align-items:center;
   		justify-content:center;
   		cursor:pointer;
	}
	
	.btn_item li:nth-child(1) a{
		border-color: #333;
	    background: #333;
	    color: #fff;
	}
	
	.btn_item li:nth-child(2) input{
		border-color: #7acc12;
   		background: #7acc12;
   		color:#fff;
   		outline:none;
   		border:none;
	}
	
	.select{
		display:flex;
		padding:40px 0;
		justify-content:flex-end;
	}
	
	.select p{
		width:70px;
		height:35px;
		font-size: 22px;
		line-height:35px;
		text-align:center;
	}

	.select select{}
	
	
	.total{
		    color: #333;
		    font-size: 28px;
		    text-align: right;
		    font-weight: bold;
		    padding-bottom: 40px;
		}
	
	.modal{
			position:fixed;
			top:0;
			left:0;
			right:0;
			bottom:0;
		}
		
		.modal::before{
			opacity:0.8;
			width:100%;
			height:100%;
			background:#000;
			content:"";
			display:block;
			position:absolute;
		}
		
		.modal.active{
			display:flex;
		}
		
		.modal_item{
			width:400px;
			height:300px;
			background:#fff;
			display:flex;
 			align-items: center;
			justify-content: center;
			flex-direction: column;
			position:absolute;
			top:50%;
			left:50%;
			transform:translate(-50%,-50%);
		}
		
		.modal-footer {
		    display: flex;
		    flex-shrink: 0;
		    flex-wrap: wrap;
		    align-items: center;
		    border: none !important;
		 }
		
		.ok {
			font-weight: bold;
			font-size: 18px;
			padding: 10px;
		}
		
</style>
<body>
	<%@ include file="header.jsp"%>

	<div class="sec_infovisual">
		<div class="inner">
			<div class="infovisual">
				<div class="info_item">
					<img src="<%=pdto.getSubimg() %>">
				</div>
				<div class="info_item">
					<h2><%=pdto.getName() %></h2>
					<p class="info"><%=pdto.getInfo() %></p>
					<p class="price"><%=pdto.getPrice() %> <span>원</span></p>

						<div class="select">
							<p>수량</p>
							<select name="priceNum" id="priceNum" onchange="aa()">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
						<p class="total">총 금액은 : <%= pdto.getPrice()%></p>
						<ul class="btn_item">
							<li><a onclick="history.go(-1)">뒤로가기</a></li>
							<li id="btn"><input type="submit" value="장바구니"></li>
						</ul>
						<input type="hidden" value="<%=id %>" name="user_id">
						<input type="hidden" value="<%=pdto.getNum() %>" name="num">

				</div>
			</div>
		</div>
	</div>

	<div class="modal">
		<div class="modal_item">
			<p class="ok">장바구니에 상품이 담겼습니다.</p>
		<div class="modal-footer">
       		<button type="button" class="btn btn-secondary" onclick="history.back()">계속 쇼핑하기</button>
       		<button type="button" style="background: #7acc12; color: #fff;'"class="btn " onclick="direct()">장바구니 이동</button>
    	 </div>
    	 </div>
	</div>
	
	<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
	
	<script>
	
	
	var modal = document.querySelector('.modal');
	var btn = document.querySelector('#btn');
	
	var id = "<%=id%>";
	
	if(id == "손님"){
		btn.addEventListener('click', function(){
			alert('로그인 후 이용 바랍니다.');
		});
	}else{
		btn.addEventListener('click', function(){
			modal.classList.add('active');
		});
	}
	
	var pricenum = 1;
	var priceNum = document.querySelector('#priceNum');
	var totalElem = document.querySelector('.total');
	var pricennnmmm;
	
	function aa(){
		var priceNumValue = priceNum.value;
		pricenum = Number(priceNumValue);
		
		totalElem.innerHTML = "총 금액은 : " + pricenum * <%=pdto.getPrice() %>
		
		return pricenum;
	}
	
	
	function direct(){
		location.href="dailyInfoProc.jsp?user_id=<%=id %>&num=<%=pdto.getNum() %>&priceNum=" + pricenum;
	}
			
	</script>
	 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
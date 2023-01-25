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
		font-size:28px;
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
	
	.btn_item li a{
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
	.btn_item li:nth-child(2) a{
		border-color: #7acc12;
   		background: #7acc12;
   		color:#fff;

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
		 padding: 40px 0;
		 display: flex;
		 justify-content: flex-end;
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
					<form>
						<div class="select">
							<p>수량</p>
							<select name="priceNum">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
							</select>
						</div>
						<p class="total">총 금액 : <%= pdto.getPrice() * 2%></p>
						<ul class="btn_item">
							<li><a onclick="history.go(-1)">뒤로가기</a></li>
							<li><a href="dailyinfoCart.jsp">장바구니</a></li>
						</ul>
						<input type="hidden" value="<%=pdto.getNum() %>">
					</form>

				</div>
			</div>
		</div>
	</div>
	<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
</body>
</html>
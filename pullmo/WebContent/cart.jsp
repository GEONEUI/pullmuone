<%@page import="java.util.Vector"%>
<%@page import="com.CartDTO"%>
<%@page import="com.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><!doctype html>
<html lang="ko">


<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("id");
	System.out.println(id);
	CartDAO dao = new CartDAO();
	Vector<CartDTO> list = dao.selectOne(id);
%>


<%@ include file="./front_header.jsp"%>
<body>

	<%@ include file="./header.jsp"%>
	<div class="cart-bener">

		<div class="cart-contents">
			<div class="location">
				<a href="">홈 ></a> <a href="">장바구니<b></a>
			</div>
		</div>
		<div id="cart-title">장바구니</div>
		<div align="left" class="cart-area">
			<div class="cart-list">
				<span id="cart-mail">매일 아침 신선하게 배송됩니다.</span>
				<div class="cart-all-select">
					<label for=""><input type="checkbox">전체선택</label>
					<button>선택삭제</button>
				</div>
				<li class="cart-product">
					<div class="cart-product-detail">
						<div class="swiper-wrapper">
							<%
								for (int i = 0; i < list.size(); i++) {
									CartDTO dto = list.get(i);
							%>
							<div class="recom-part">
								<img src="<%=dto.getMainimg()%>" alt="" class="recom_goods_img">
								<div class="goods-info">
									<span class="goods-brand"><b><%=dto.getCategory()%></b></span>
									<span class="goods-brand"><b>수량: <%=dto.getPricenum()%></b></span>
									<span class="goods-name"><%=dto.getName()%></span>
									<div class="price-cost"></div>
									<span class="goods-price"><b><%=dto.getPrice()%></b>원</span>
									<div class="goods-delfree">무료배송</div>

								</div>
							</div>
							<%
								}
							%>
						</div>

					</div>
				</li>
				<div id="-cart-notice-area">
					<b>주문 시 유의사항</b>
					<ul class="list dot-list">
						<li>담은 제품은 최대 50개까지 30일간 보관됩니다.</li>
						<li>주문 시 일별 음용 수량을 수정할 수 있으며, 예상 청구 금액 확인이 가능합니다.</li>
					</ul>
				</div>
				<a href="https://greenjuice.pulmuone.com/event/event/view/2394"
					target="_blank"><img src="./image/cart-bottum.png" alt="">
			</div>
			<%
								int sum= 0;
								for (int i = 0; i < list.size(); i++) {
									CartDTO dto = list.get(i);
									  sum += dto.getPrice();
							%>

			<div class="checkout-area">
				<dl>
					<dt class="list-head">
						<em class="count">선택한 상품 <span data-count-view="item"><%=list.size() %></span>개
						</em>
					</dt>
					<d> <span>상품 판매가 </span> <b>
						<div class="now-price">
							<b data-price-view="origin" class="ppp"><%=dto.getPricenum() %></b> <span>원</span>
						</div>
					</b> </d>
					<d> <span>상품 할인 판매가</span> <b>
						<div class="now-price">
							<b data-price-view="sale" class="ppp">0</b> <span>원</span>
						</div>
					</b> </d>
					<d> <span>배송비</span> <b>
						<div class="now-price">
							<b data-price-view="delivery" class="ppp">0</b> <span>원</span>
						</div>
					</b> </d>
					<d class="checkout-sum"> <span>주문금액</span> <b>
						<div class="now-price">
							<b data-price-view="total"><%=sum %></b> <span>원</span>
							<%
								}
							%>
						</div>
					</b> </d>
				</dl>
				<button type="button" id="allOrderBtn" class="btn-default">주문하기</button>
			</div>
		</div>
		<%@ include file="./TopBtn.jsp"%>
		<%@ include file="./footer.jsp"%>
</body>

</html>
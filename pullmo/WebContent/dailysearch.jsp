<%@page import="com.ProductDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = (String) session.getAttribute("id");
	ProductDAO pdao = new ProductDAO();
	String dd = request.getParameter("searchKeyword");
	System.out.println(dd);
	Vector<ProductDTO> list1 = pdao.searchAll(dd);
	int listMax = list1.size();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="front_header.jsp"%>
<body>
	<%@ include file="header.jsp"%>
	<div id="bener">
		<img src="./image/dailymain.png" alt="" id="mainImg1">
	</div>
	<div id="contents">
		<div class="inner">
			<div class="contents">
				<nav class="nav-daily-shipping">
				<div id="tab1" class="tab_content">
					<div class="result-header">
						<div class="result-total">
							검색 결과 총<span class="count"><%=listMax%></span>개
						</div>
					</div>
					<ul class="product-list">
						<%
							for (int i = 0; i < list1.size(); i++) {
								ProductDTO dto = list1.get(i);
						%>
						<a href="dailyInfo.jsp?num=<%=dto.getNum()%>" class="recom-part">
							<img src="<%=dto.getMainimg()%>" alt="" class="recom-goods-img">
							<div class="goods-info">
								<span class="goods-brand"><%=dto.getCategory()%></span> <span
									class="goods-name"><%=dto.getName()%></span> <span
									class="goods-price"><%=dto.getPrice()%>원</span>
								<div class="goods-wrap-item">
									<div class="goods-delfree">무료배송</div>
									<form action="dailyProc.jsp">
										<button class="add-cart" style="cursor: pointer"
											onclick="functtion(e)" name="num" value="<%=dto.getNum()%>">
											<input type="hidden" name="user_id"
												value="<%=(String) session.getAttribute("id")%>"> <img
												src="./image/showcart.png" alt="" class="cart">
										</button>
									</form>
								</div>
							</div>
						</a>
						<%
							}
						%>
					</ul>
				</div>
				<!-- #tab1 --> <!-- #tab2 -->
			</div>
		</div>
	</div>
	<%@ include file="TopBtn.jsp"%>
	<%@include file="footer.jsp"%>
</body>
</html>
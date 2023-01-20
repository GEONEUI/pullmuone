<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");

	String id = (String) session.getAttribute("id");
	
	
	if(id == null){
		id = "로그인";
	}
	

%>

<!doctype html>
<html lang="ko">
	<%@ include file = "front_header.jsp" %>

<body>
	<%@ include file = "header.jsp" %>
	
	
	
	<div class="visual" to="/test">
		<!-- Swiper -->
		<div class="swiper mySwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="./image/visual1.png" alt=""></div>
				<div class="swiper-slide"><img src="./image/visual2.png" alt=""></div>
				<div class="swiper-slide"><img src="./image/visual3.png" alt=""></div>
				<div class="swiper-slide"><img src="./image/visual4.png" alt=""></div>
				<div class="swiper-slide"><img src="./image/visual5.png" alt=""></div>
			</div>
			<div class="swiper-button-next"></div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
	<div class="sec_personal">
		<div class="inner">
			<div class="personal">
				<div class="login_icon_area">
					<div class="login_service">
						<h2>
							<i class="fa-regular fa-user-group"></i><br>
							<span style="font-weight:bold">
							
							<%
								if(id == "로그인"){ %>
								<%=id %> </span>하시고<br>
								<span style="color:#5e9731; font-weight:bold;">맞춤 서비스</span>를 누리세요!
							
								<% } else { %>
								<%=id %></span> 님 안녕하세요.<br>
								<span style="color:#5e9731; font-weight:bold;">맞춤 서비스</span>를 누리세요!
							<%
								}
							%>
						</h2>
						<%
							if(id.equals("admin")){%>
							<a href="admin.jsp">관리자페이지<i class="fa-sharp fa-solid fa-arrow-right"></i></a>
							<a href="indexProc.jsp?logout=1">로그아웃 <i class="fa-solid fa-arrow-right-from-bracket"></i></a>
							
							<% } else if(id.equals("로그인")){ %>
							
							<a href="login.jsp">로그인하기 <i class="fa-sharp fa-solid fa-arrow-right"></i></a>
							
						
						<%	} else { %>
						
							<div class="user_btn"
								<a href="myinfo.jsp">내정보 <i class="fa-solid fa-circle-user"></i></a>
								<a href="indexProc.jsp?logout=1">로그아웃 <i class="fa-solid fa-arrow-right-from-bracket"></i></a>
							</div>
						<%
							}
						%>
					</div>
					<ul class="icon_service">
						<li>
							<a href="">
								<p class="icon"><i class="fa-regular fa-message-smile"></i></p>
								<p>음용내역보기</p>
							</a>
							<a href="">
								<p class="icon"><i class="fa-regular fa-message-smile"></i></p>
								<p>음용내역보기</p>
							</a>
							<a href="">
								<p class="icon"><i class="fa-regular fa-message-smile"></i></p>
								<p>음용내역보기</p>
							</a>
							<a href="">
								<p class="icon"><i class="fa-regular fa-message-smile"></i></p>
								<p>음용내역보기</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="sec_banner">
		<img src="./image/banner1.png" alt="">
	</div>
	<div class="sec_ad">
		<div class="inner">
			<div class="ad">
				<img src="./image/ad1.png" alt="">
				<img src="./image/ad2.png" alt="">
			</div>
		</div>
	</div>
	<div class="sec_banner">
		<img src="./image/banner2.png" alt="">
	</div>
	<div class="sec_info">
		<div class="inner">
			<div class="info">
				<div class="info_item">
					<p>가입혜택</p>
					<h2>3,6,9 쿠폰증정</h2>
					<span>음용할수록 늘어나는 혜택!<br>
						3,6,9개월마다 쿠폰증정, 시음선물까지
					</span>
					<figure>
						<img src="./image/icon1.png" alt="">
					</figure>
				</div>
				<div class="info_item">
					<p>친구초대</p>
					<h2>친구 초대 쿠폰 증정</h2>
					<span>풀무원녹즙에 친구를 초대하면 <br>
						나도 친구도 5천원씩 쿠폰 증정
					</span>
					<figure>
						<img src="./image/icon2.png" alt="">
					</figure>
				</div>
				<div class="info_item">
					<h2>풀무원녹즙 <br>
						창업안내
					</h2>
					<figure>
						<img src="./image/icon3.png" alt="">
					</figure>
				</div>
				<div class="info_item">
					<h2>풀무원녹즙 <br>
						창업안내
					</h2>
					<figure>
						<img src="./image/icon4.png" alt="">
					</figure>
				</div>
			</div>
		</div>
	</div>
		<%@ include file = "TopBtn.jsp" %>
		<%@ include file = "footer.jsp" %>


	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper(".mySwiper", {
			loop: true,
			speed: 1500,
			autoplay: true,
			slidesPerView: 1,
			spaceBetween: 0,
			keyboard: {
				enabled: true,
			},
			pagination: {
				el: ".swiper-pagination",
				clickable: true,
			},
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
		});
	</script>
</body>

</html>

</body>

</html>
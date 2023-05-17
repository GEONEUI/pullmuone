<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<%@ include file = "front_header.jsp" %>
<body>
	

		<style>
		.bener {
			width: 100%;
			height: 400px;
			background: blue;
		}

		.contents {
			width: 100%;
			height: 400px;
			background: black;

		}


		.inner {
			width: 1200px;
			margin: 0 auto;
		}

		#mainImg {
			width: 1168px;
			height: 280px;
			border-radius: 30px;
		}

		#available {
			width: 1168px;
			height: 40px;
			display: flex;
			justify-content: space-between;
			align-items: center
		}

		#tip {
			width: 54.3px;
			height: 36px;
			text-align: center;
			align-items: center;
			color: white;
			background: #ff962B;
			border-radius: 30px;
			padding-top: 6px;
			margin-right: 5px;
		}

		#recom-logo {
			width: 600px;
			height: 36px;
			padding: 40px 0 40px 20px;
			font-size: 30px;
		}

		.recom_wrap {
			display: flex;
			align-items: center;
			justify-content: space-between;
			flex-wrap: wrap;
		}

		.recom-part {
			width: 268px;
			height: 448px;
			padding: 10px, 0, 10px, 0;
		}

		.recom-goods-img {
			height: 268px;
			width: 268px;
			margin: 0;
			border-top-left-radius: 30px;
			border-top-right-radius: 30px;

		}

		.goods-info {

			width: 268px;
			height: 120px;
			background: #f7f7f7;

		}

		.goods-brand {
			width: 236px;
			height: 24px;
			display: block;
		}

		.price-cost {
			display: block;
			font-size: 20px;
			padding-top: 30px;
		}

		.goods-price {
			width: 236px;
			height: 28px;
			display: block;
			margin-left: 15px;
		}

		.goods-delfree {
			width: 69px;
			height: 26px;
			background: #f7f7f7;
			display: inline;
			margin-left: 15px;

		}

		i {
			font-size: 20px;
		}
	</style>
</head>

<body>
	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>


<%@ include file = "header.jsp" %>
	<div id="bener">
		<div class="banner">
			<!-- Swiper -->
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="./image/pbanner1.png" alt=""></div>
					<div class="swiper-slide"><img src="./image/pbanner2.png" alt=""></div>
					<div class="swiper-slide"><img src="./image/pbanner3.png" alt=""></div>
				</div>
				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			</div>
		</div>
	</div>
	<div id="recomm">
		<div class="inner">
			<div class="recom">
				<h3 id="recom-logo">추천상품 BEST&NEW</h3>
				<div class="recom_wrap">
					<div class="recom-part">
						<img src="./image/bestnew1.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>3일 프로그램 디워밍업</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>82,900</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>

						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew2.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>유기농주스 유기농 키즈프리 반짝포도</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>19,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew3.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>유기농주스 유기농 키즈프리 반짝포도</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>27,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew4.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>과채주스 프레스업 녹즙</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>30,700</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew5.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>제주 유기농 NFC 양배추주스 양배추즙</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>49,900</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew6.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>식물성 RTG 오메가3 혈행그린</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>60,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew7.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>과채주스 프레시업 녹즙 케셀아세라 7입</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>25,900</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew8.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>유기농주스 유기농키즈프리 튼튼사과</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>19,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew9.jpg" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>클렌즈랩</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>26,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew10.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>프레시스므디 프레시 그라비올라&트로피칼</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>27,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew11.jpg" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>진한 흑도라지&수세미</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>75,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
					<div class="recom-part">
						<img src="./image/bestnew12.png" alt="" class="recom-goods-img">
						<div class="goods-info">
							<span class="goods-brand"><b>나한테 바나나 유산균 90입</b></span>
							<div class="price-cost"></div>
							<span class="goods-price"><b>37,000</b>원</span>
							<div class="goods-delfree">무료배송</div>
							<i class="fa-solid fa-cart-shopping"></i>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<%@ include file="TopBtn.jsp"%>
	<%@ include file = "footer.jsp" %>
	
	<!-- Swiper JS -->
	<script src="https://kit.fontawesome.com/573d7b1fe2.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>
	<script>
		var swiper = new Swiper(".mySwiper", {
			navigation: {
				nextEl: ".swiper-button-next",
				prevEl: ".swiper-button-prev",
			},
		});
	</script>
	
</body>
</html>
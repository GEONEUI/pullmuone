<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%@ include file ="front_header.jsp" %>
<body>
	<%@ include file ="header.jsp" %>
	<div id="bener">
		<img src="./image/dailymain.png" alt="" id="mainImg1">
		<div class="inner">
			<div class="daily-banner">
				
				<div id="available">
					<div id="av1">
						<div id="tip">TIP</div>
						<p>일일배송 가능 여부를 확인해보세요.</p>
					</div>
					<a href="https://shop.pulmuone.co.kr/shippingGuide?target=daily" target="_blank" id="del-define">
						배송유형 확인하기
					</a>
				</div>
				<div id="recom">
					<h3 id="recom-logo">매일매일,먹어봐요</h3>
					<div class="swiper-wrapper">
						<div class="recom-part">
							<img src="./image/r1.jpg" alt="" class="recom-goods-img">
							<div class="goods-info">
								<span class="goods-brand"><b> 풀무원 녹즙</b></span>
								<span class="goods-name">핸디밀 그린샐러드 식이섬유 플랜(190ml)</span>
								<div class="price-cost"></div>
								<span class="goods-price"><b>3,300</b>원</span>
								<div class="goods-delfree">무료배송</div>
								<button class="add-cart">
									<img src="./image/showcart.png" alt="" class="cart">
								</button>
							</div>
						</div>
						<div class="recom-part">
							<img src="./image/r2.jpg" alt="" class="recom-goods-img">
							<div class="goods-info">
								<span class="goods-brand"><b>프로바이오틱</b></span>
								<span class="goods-name">식물성유산균 모링가&밀키시슬(130ml)</span>
								<div class="price-cost"></div>
								<span class="goods-price"><b>2,500</b>원</span>
								<div class="goods-delfree">무료배송</div>
								<button class="add-cart">
									<img src="./image/showcart.png" alt="" class="cart">
								</button>
							</div>
						</div>
						<div class="recom-part">
							<img src="./image/r3.jpg" alt="" class="recom-goods-img">
							<div class="goods-info">
								<span class="goods-brand"><b>디자인밀</b></span>
								<span class="goods-name">300라이스Meal(1일1식)</span>
								<div class="price-cost"></div>
								<span class="goods-price"><b>6,410</b>원</span>
								<div class="goods-delfree">무료배송</div>
								<button class="add-cart">
									<img src="./image/showcart.png" alt="" class="cart">
								</button>

							</div>
						</div>
						<div class="recom-part">
							<img src="./image/r4.jpg" alt="" class="recom-goods-img">
							<div class="goods-info">
								<span class="goods-brand"><b>디자인밀</b></span>
								<span class="goods-name">암환자용 식단 현미(1일2식)</span>
								<div class="price-cost"></div>
								<span class="goods-price"><b>24,000</b>원</span>
								<div class="goods-delfree">무료배송</div>
								<button class="add-cart">
									<img src="./image/showcart.png" alt="" class="cart">
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="contents">
		<ul class="tabs">
			<label for="" class="daily-tab-list" style="cursor:pointer">
					<li class="active" rel="tab1"><img src="./image/dailytab1.png" alt="" class="nav-icon">녹즙
					</li>

				</label>
				<label for="" class="daily-tab-list" style="cursor:pointer">
					<li class="active" rel="tab2"><img src="./image/dailytab2.png" alt="" class="nav-icon">디자인밀</li>
				</label>
				<label for="" class="daily-tab-list" style="cursor:pointer">
					<li class="active" rel="tab3"><img src="./image/dailytab3.png" alt="" class="nav-icon">베이비밀</li>
				</label>
		</ul>
		<div class="inner">
			<div class="contents">
				<nav class="nav-daily-shipping">
					

					<div id="tab1" class="tab_content">
						<div class="result-header">

							<div class="result-total">총<span class="count">12</span>개</div>
							<div class="result-listType">
								<div class="result-header-sort">
									<label for=""><input type="radio" value="high-price" name="priceN"><span>높은가격</span></label>
									<label for=""><input type="radio" value="low-price" name="priceN"><span>낮은가격</span></label>
								</div>

							</div>
						</div>
						<ul class="product-list">
							<li class="product"><img class="imgg" src="./image/n1.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">[일일배달]아임리얼 토마토 (190ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>3,300</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n2.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">돌미나리와 민들레 (130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,800</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n3.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">새싹인삼(100ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>3,000</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n4.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>프로바이오틱</b></span>
									<span class="goods-name">식물성유산균 쌀 요거트(150ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,300</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n5.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">케일&사과(130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,100</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n6.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">위러브플러스 (양배추&브로콜리) (130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,100</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n7.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">마시는 새싹 (130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,400</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n8.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">노니&깔라만시 (130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,500</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n9.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">당근즙 (130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>3,100</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n10.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">슈퍼 키즈하이 (130ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>2,000</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n11.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">칸러브 엑스투 (137.2g)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>3,100</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/n12.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>풀무원녹즙</b></span>
									<span class="goods-name">핸디밀 그린샐러드 식이섬유플랜 (190ml)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>3,300</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>


						</ul>
					</div>
					<!-- #tab1 -->

					<!-- #tab2 -->
					<div id="tab2" class="tab_content">
						<div class="result-header">

							<div class="result-total">총<span class="count">7</span>개</div>
							<div class="result-listType">
								<div class="result-header-sort">
									<label for=""><input type="radio" value="high-price" name="priceD"><span>높은가격</span></label>
									<label for=""><input type="radio" value="low-price" name="priceD"><span>낮은가격</span></label>
								</div>

							</div>
						</div>
						<ul class="product-list">
							<li class="product"><img class="imgg" src="./image/d1.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">300라이스Meal(1일1식)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>6,410</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/d2.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">정성한상 (1일1식)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>7,500</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/d3.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">300샐러드Meal</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>6,970</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/d4.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">당뇨식단 (1일2식)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>22,800</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/d5.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">500차림 (1일1식))</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>8,900</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/d6.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">500차림 (1일1식)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>24,000</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/d7.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>디자인밀</b></span>
									<span class="goods-name">암환자용 식단 현미 (1일 2식)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>24,000</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>

						</ul>
					</div>
					<!-- #tab2 -->

					<!-- #tab3 -->
					<div id="tab3" class="tab_content">
						<div class="result-header">

							<div class="result-total">총<span class="count">11</span>개</div>
							<div class="result-listType">
								<div class="result-header-sort">
									<label for=""><input type="radio" value="high-price" name="priceB"><span>높은가격</span></label>
									<label for=""><input type="radio" value="low-price" name="priceB"><span>낮은가격</span></label>
								</div>

							</div>
						</div>
						<ul class="product-list">
							<li class="product"><img class="imgg" src="./image/b1.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">뽀로로 영양덮밥 (2팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>10,370</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b2.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 완료기 (2팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>10,030</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b3.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 후기 (2팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>9,010</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b4.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 초기 1단계 (야채과일미음)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>4,200</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b5.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 중기 (2팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>8,840</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b6.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 후기 (3팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>15,900</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b7.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">뽀로로 영양덮밥 (3팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>18,300</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b8.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 완료기 (3팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>17,700</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b9.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 병행기 (3팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>15,600</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b10.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 초기 2단계 (1팩)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>3,570</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>
							<li class="product"><img class="imgg" src="./image/b11.jpg" />
								<div class="c-infor">
									<span class="goods-brand"><b>베이비밀</b></span>
									<span class="goods-name">이유식 초기 1단계 (쌀미음)</span>
									<div class="price-cost"></div>
									<span class="goods-price"><b>4,200</b>원</span>
									<div class="goods-delfree">무료배송</div>
									<button class="add-cart">
										<img src="./image/showcart.png" alt="" class="cart">
									</button>
								</div>
							</li>

						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
	<script>
		$(function () {
			$(".tab_content").hide();
			$(".tab_content:first").show();

			$("ul.tabs li").click(function () {
				$("ul.tabs li").removeClass("active").css("color", "#555");
				$(this).addClass("active").css("color", "#80c342");
				$(".tab_content").hide()
				var activeTab = $(this).attr("rel");
				$("#" + activeTab).fadeIn()
			});
		});
	</script>
	<%@ include file="TopBtn.jsp"%>
	<%@include file ="footer.jsp" %>
</body>
</html>
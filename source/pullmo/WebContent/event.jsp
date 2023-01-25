<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!doctype html>
<html lang="ko">

<%@ include file="./front_header.jsp"%>
<link href="css/event.css" rel="stylesheet" type="text/css">
<body>

<%@ include file="./header.jsp"%>

<div class="contents-area">
		<div class="inner">
			<div class="location">
				<a href="./index.jsp">홈</a> > <a href="./event.jsp">이벤트</a>
			</div>
			<div class="cont-event-area">
				<div class="title-tab-area">
					<h2 class="cont-title">이벤트</h2>
					<ul class="nav nav-tabs nav-justified" id="myTab-area"
						role="tablist">
						<li class="nav-item" role="presentation"><a href='./event.jsp'
							class="nav-link active"
							style="padding-right: 4px; margin-bottom: 0px; height: 47px">
								진행중이벤트 </a></li>
						<li class="nav-item" role="presentation"><a href="./eventEnd.jsp"
							class="nav-link "
							style="padding-right: 4px; margin-bottom: 0px; height: 47px">종료된이벤트
						</a></li>
						<li class="nav-item" role="presentation"><a href="./eventWin.jsp"
							class="nav-link " style="margin-bottom: 0px; height: 47px">당첨자발표
						</a></li>
					</ul>
				</div>

				<div class="tab-pane fade show active" id="profile" role="tabpanel"
					aria-labelledby="profile-t">

					<!-- <h3 class="hide">진행중이벤트</h3> -->
					<ul class="event-list" id="pagable-list" data-list-object="replace">
						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/0044e818-a18e-4478-94db-6ecb8bc288f1.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>설레는 설맞이, 건강즙 기획전!</b> <span class="text-day">2023.01.03
										~ 2023.01.16</span>
								</div>
						</a></li>

						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/f2426a6e-e19a-4a1a-99f6-3d49e41b7c76.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>GRAND OPEN 스페셜 이벤트</b> <span class="text-day">2022.12.16
										~ 2023.01.31</span>
								</div>
						</a></li>

						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/eb8eef30-bb3e-4771-9ddb-4fe2b2969c52.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>새로워진 풀무원녹즙 서비스플랫폼의 네이밍을 지어주세요!</b> <span class="text-day">2022.12.14
										~ 2023.01.31</span>
								</div>
						</a></li>

						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/b619f710-a7f8-4988-835c-3e831f7fc40b.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>참여만 해도 100% 당첨, Welcome Gift!</b> <span class="text-day">2022.12.13
										~ 2023.01.31</span>
								</div>
						</a></li>

						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/df9c4627-6684-470d-aab9-a470108579bf.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>풀무원녹즙 시음을 선물해 보세요. 친구도 나도 5,000원 쿠폰까지!</b> <span
										class="text-day">2022.11.07 ~ 2026.11.30</span>
								</div>
						</a></li>

						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/99c10264-6275-49b9-a085-fc9b7d91e022.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>좋은 건 함께 하는게 친구~ 친구 초대하고 5,000원 쿠폰 받자!</b> <span
										class="text-day">2022.11.07 ~ 2025.11.30</span>
								</div>
						</a></li>

						<li><a href="#">
								<div class="img-area">
									<img
										src="./image/event/e84341d0-b41d-490a-b4a3-4f7d1b04e207.png"
										alt="풀무원녹즙">
								</div>
								<div class="text-area">
									<b>회원가입 축하 3,6,9 쿠폰 지급 프로모션! 음용할수록 늘어나는 혜택을 확인하세요.</b> <span
										class="text-day">2022.11.07 ~ 2025.11.30</span>
								</div>
						</a></li>

					</ul>
					<nav aria-label="Page navigation example" class="pagenavi-area"
						data-pagination>
						<input type='hidden' id='pageNo' name='pageNo' />
						<ul class="pagination">
							<li class="page-item active"><a class="page-link">1</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="TopBtn.jsp"%>
	<%@ include file="./footer.jsp"%>
</body>
</html>
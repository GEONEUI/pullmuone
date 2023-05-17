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
							class="nav-link"
							style="padding-right: 4px; margin-bottom: 0px; height: 47px">
								진행중이벤트 </a></li>
						<li class="nav-item" role="presentation"><a href="./eventEnd.jsp"
							class="nav-link active "
							style="padding-right: 4px; margin-bottom: 0px; height: 47px">종료된이벤트
						</a></li>
						<li class="nav-item" role="presentation"><a href="./eventWin.jsp"
							class="nav-link " style="margin-bottom: 0px; height: 47px">당첨자발표
						</a></li>
					</ul>
				</div>

				<div class="tab-pane fade show active" id="profile" role="tabpanel"
					aria-labelledby="profile-t">
					<!--S:종료된이벤트-->
					<!-- <h3 class="hide">종료된이벤트</h3> -->


					<ul class="event-list" id="pagable-list" data-list-object="replace">

						<li><a href="#" class="disabled"
							onclick="return false">
								<div class="img-area">
									<img
										src="./image/event/b8a9a11a-1ec1-43d6-b660-1b8f72394f7b.png"
										alt="CCM 재인증 기념 이벤트">
								</div>
								<div class="text-area">
									<b>CCM 재인증 기념 이벤트</b> <span class="text-day">2022.12.12
										~ 2022.12.20</span>
								</div>
						</a></li>

						<li><a href="#" class="disabled"
							onclick="return false">
								<div class="img-area">
									<img
										src="./image/event/a883eab3-3061-48f4-b06e-13e38a3cc2ce.png"
										alt="리뉴얼 기념 응원 이벤트 ">
								</div>
								<div class="text-area">
									<b>리뉴얼 기념 응원 이벤트 </b> <span class="text-day">2022.11.21
										~ 2022.12.11</span>
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
					<!--E:종료된이벤트-->
				</div>
			</div>
		</div>
	</div>

<%@ include file="./footer.jsp"%>
</body>
</html>
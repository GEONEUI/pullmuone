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
				<a href="./index.jsp">홈</a> > <a href="./event.">이벤트</a>
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
							class="nav-link"
							style="padding-right: 4px; margin-bottom: 0px; height: 47px">종료된이벤트
						</a></li>
						<li class="nav-item" role="presentation"><a href="./eventWin.jsp"
							class="nav-link active" style="margin-bottom: 0px; height: 47px">당첨자발표
						</a></li>
					</ul>
				</div>

				<div class="tab-pane fade show active" id="profile" role="tabpanel"
					aria-labelledby="profile-t">
					<!--S:당첨자발표-->
					<!--<h3 class="hide">당첨자발표</h3>-->
					<div class="list-area">

						<div class="list-head">
							<em class="count">총 <span>1</span>건
							</em>
						</div>
						<table class="tbl-col event-winner-list" style="margin-top: 30px; margin-bottom: 30px">
							<caption></caption>
							<colgroup>
								<col>
								<col>
							</colgroup>
							<tbody id="pagable-list" data-list-object="replace">
								<tr>
									<td class="al"><a href="#">CCM 재인증 기념 이벤트 당첨자 발표 <span>2022.12.21</span>
									</a></td>
								</tr>
							</tbody>
						</table>
						<nav aria-label="Page navigation example" class="pagenavi-area"
							data-pagination>
							<input type='hidden' id='pageNo' name='pageNo' />
							<ul class="pagination">
								<li class="page-item active"><a class="page-link">1</a></li>
							</ul>
						</nav>

					</div>
					<!--S:당첨자발표-->
				</div>
			</div>
		</div>
	</div>

	<%@ include file="./footer.jsp"%>
</body>
</html>
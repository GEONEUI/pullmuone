<%@page import="com.BoardDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	String id = (String)session.getAttribute("id");

	if(id == null){
		id = "";
	};

	BoardDAO bdao = new BoardDAO();
	Vector<BoardDTO> v = bdao.selectAllBoard();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="front_header.jsp" %>
<style>
				* {
					padding: 0;
					box-sizing: border-box;
					margin: 0;
				}

				body {
					letter-spacing:-1.5px;
				}

				.sec_table {
					padding: 50px 0;
				}

				h2 {
					padding: 20px 0;
					font-size: 26px;
				}
				
				.titlearea{
					display:flex;
					justify-content:space-between;
					align-items:center;
				}

				.line {
					display: flex;
					border-bottom: 1px solid #ccc;
					height:50px;
					align-items:center;
					justify-content:center;
					font-size:19px;
				}
				
				.line:first-child{
					background:#f4f4f4;
				}
				
				.line>div{
					display:flex;
					align-items:center;
					justify-content:center;
				}
				
				.line .num{
					width:10%;
				}
				.line .subject{
					width:50%;
				}
				.line .writer{
					width:10%;
				}
				.line .reg_date{
					width:10%;
				}
				.line .readcount{
					width:10%;
				}
				
				
				.btn{
					display:block;
					padding:10px;
					background:#5e9731;
					color:#fff;
					cursor:pointer;
				}
				
				.subject a{
					width:100%;
					text-align:center;
				}
				
				.cursor{
					cursor:pointer;
				}
				


			</style>
		</head>
			<body>
				<%@ include file="header.jsp" %>
		
					<div class="sec_table">
						<div class="inner">
							<div class="table">
								<div class="titlearea">
									<h2>게시글 목록</h2>
									<a class="btn">글작성</a>
								</div>
								<form action="boardList.jsp" method="post">
									<div class="line">
										<div class="num">번호</div>
										<div class="subject">글제목</div>
										<div class="writer">글쓴이</div>
										<div class="reg_date">작성일</div>
										<div class="readcount">조회수</div>
									</div>
									<%
										for(int i=0; i<v.size();i++){
											 BoardDTO dto = v.get(i);
									%>
									
									<div class="line">
										<div class="num"><%=dto.getNum() %></div>
										<%
											if(id == ""){%>
											<div class="subject" onclick="goLogin();"><a class="cursor"><%=dto.getSubject()%></a></div>		
											<% } else { %>
											<div class="subject"><a class="cursor" href="boardinfo.jsp?num=<%=dto.getNum() %>"><%=dto.getSubject()%></a></div>
										<%		
											}
										%>
										
										
										
										<div class="writer"><%=dto.getWriter()%></div>
										<div class="reg_date"><%=dto.getReg_date()%></div>
										<div class="readcount"><%=dto.getReadcount()%></div>
									</div>
									<%
										}
									
									%>
								</form>
							</div>
						</div>
					</div>


			<%@ include file="footer.jsp" %>
			
			
			<script>
			   	var a = "<%=id%>";
			   	
			   	function goLogin(){
			   		alert('로그인후 이용해주세요.');
			   	}
			   	
			   	
				btnElem = document.querySelector('.btn');
				btnElem.addEventListener('click', function(){
					if(a == "1"){
						alert('로그인이 필요한 서비스입니다.')
					}else{
						location.href="boardWriteForm.jsp";
					}
				});
				var dd = document.querySelectorAll('.dd');
			
				

				
				

				



			</script>
	</body>
</html>
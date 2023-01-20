<%@page import="com.BoardPlusDTO"%>
<%@page import="java.util.Vector"%>
<%@page import="com.BoardPlusDAO"%>
<%@page import="com.UserDAO"%>
<%@page import="com.BoardDTO"%>
<%@page import="com.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	//넘어온 번호
 	int num = Integer.parseInt(request.getParameter("num"));
 	UserDAO dao = new UserDAO();
 	BoardDAO bdao = new BoardDAO();
 	BoardDTO bdto = bdao.boardSelectOne(num);
 	
 	BoardPlusDAO pdao = new BoardPlusDAO();
 	Vector<BoardPlusDTO> pdto = pdao.selectOnePlus(num);
 	
 	

 	

 	String id = (String) session.getAttribute("id");
 	String password = dao.getPass(id);
 	

 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="front_header.jsp" %>
<title>Insert title here</title>
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
				
				.table{
					margin-bottom:100px;
					padding:25px;
				}


				h2 {
					padding: 20px 0;
					font-size: 26px;
					border-bottom: 3px solid #000;
					margin-bottom: 25px;
				}

				.line {
					display: flex;
					justify-content:space-between;
				}
				
				
				.line input[type="text"]{width:90%; height:50px;}
				.line input[type="submit"]{}
				
			
				.ad{font-size:18px;}
				.ad .adtop{display:flex; justify-content:space-between;}
				.ad .adtop .num{padding:15px 0;}
				.ad .adtop .crud{}
				.ad .adtop .crud button{
					padding:5px;
					cursor:pointer;
				}
				.ad .subject{padding-bottom:10px; font-weight:bold; font-size:25px;}
				.ad ul{display:flex; font-size:17px; color:#555; padding-bottom:50px;}
				.ad ul li{margin-right:10px;}
				.ad .context{font-size:26px;}
				
				.reple .reple_item{border-bottom:1px solid #e5e5e5; padding:25px; background: #f7f7f7;}
				
				.reple ul{display:flex; margin-bottom:10px;}
				.reple ul li{margin-right: 8px; color:#555; font-size:16px}
				.reple ul li:last-child{color:#b3b3b3; font-size:14px; padding-top:3px;}
				
				
				

			</style>
</head>
<body>
				<%@ include file="header.jsp" %>
					<div class="sec_table">
						<div class="inner">
							<div class="table">
								<h2><%=bdto.getSubject() %></h2>
								<div class="ad">
									<div class="adtop">
										<p class="num">글번호 : <%=bdto.getNum() %></p>
										<div class="crud">
											<button onclick="CheckUpdate()">수정하기</button>
											<button onclick="CheckDelete()">삭제하기</button>
											<button onclick="history()">목록보기</button>
										</div>
									</div>
									<ul>
										<li>작성자 : <%=bdto.getWriter() %></li>
										<li>작성날짜 : <%=bdto.getReg_date() %></li>
									</ul>
									<pre class="context"><%=bdto.getContext()%></pre>
								</div>
							</div>
							<div class="reple">
								<div class="reple_item">
									<ul>
										<li class="rwriter"><%=bdto.getWriter() %></li>
									</ul>
									<h5>
										<form action="boardinfoProc.jsp">
											<div class="line">
												<input type="hidden" name="writer" value="<%=id %>">
												<input type="hidden" name="password" value="<%=password %>">
												<input type="hidden" name="ref" value="<%=num %>">
												<input type="hidden" name="num" value="<%=num %>">
												<input type="text" name="context">
												<input type="submit" value="댓글작성">
											</div>
										</form>
									</h5>
								</div>
							</div>
							<div class="reple">
							<%
								for(int i=0; i<pdto.size() ;i++){
									BoardPlusDTO p = pdto.get(i);		
							%>
								<div class="reple_item">
									<ul>
										<li class="rwriter"><%=p.getWriter() %></li>
										<li class="rtime"><%=p.getReg_date() %></li>
									</ul>
									<h5><%=p.getContext() %></h5>
								</div>
							<%		
								}
							
							%>
								
							</div>
						</div>
					</div>


			<%@ include file="footer.jsp" %>
			
			<script>
			
				var userId = "<%=id%>";
				var writeID = "<%=bdto.getWriter() %>";
				var link = "<%=bdto.getNum() %>";
				
			
				function CheckDelete(){
					if(userId == writeID){
						location.href="boardRemove.jsp?num=" + link;
					}else{
						alert("본인게시글만 삭제 가능합니다.");
					}
				}
				
				function CheckUpdate(){
					if(userId == writeID){
						location.href="boardUpdateForm.jsp?num=" + link;
					}else{
						alert("본인게시글만 수정 가능합니다.");
					}
				}
				
				function history(){
					location.href="boardList.jsp";	
				}
				
				
				
			</script>
	</body>
</html>
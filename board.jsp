<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String num = request.getParameter("table");

	sql = new StringBuffer();
	sql.append(" SELECT a.Write_title, a.Write_date, b.content_write, b.content_link, b.content_image FROM " + TABLE_WRITE + " a," + TABLE_CONTENT + " b");
	sql.append(" WHERE a.Write_num = b.WriteWrite_num AND a.Write_num = " + num);

	rs = stmt.executeQuery( sql.toString() );

	String scrap = "writeScrap.jsp?table=" + num;
%>

<!doctype html>
<html>
 <head>
  <meta charset="UTF-8">
  <meta name="Author" content="COD-G">
  <meta http-equiv="Imagetoolbar" content="no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <link rel="stylesheet" type="text/css" href="./css/main.css">
  <link rel="stylesheet" type="text/css" href="./css/style.css">
  <link rel="stylesheet" href="js/x_nav/jquery.fatNav.min.css">
  <title>좋 은 날 엔 희 소 식</title>

	<script language="javascript">

	</script>

	<style>
		.border {
			border:1px solid black;
		}
		.font {
			margin:0 auto;
			width:600px;
			font-family:"맑은 고딕";
			margin-bottom:15px;
			border-bottom:1px solid black;
		}
		.font h5 {
			text-align:right;
			font-size:11px;
		}
		.font_div {
			margin:0 auto;
			text-align:center;
			width:600px;
			letter-spacing: 1px;
			font-size:13px;
			margin-bottom:50px;
		}
		.font_bottom {
			margin:0 auto;
			width:300px;
			font-size:13px;
			text-align:left;
			border:1px solid black;
			margin-bottom:30px;
			font-family:"맑은 고딕"
		}
		.font_bottom a {
			padding-left:10px;
		}
		.contentImage {			
			padding:8px;
		}
	</style>

 </head>

 <body>
 
		<div class="fat-nav">
			<div class="fat-nav__wrapper">
				<ul>
					<li><a href="./login.jsp"><%= log %></a></li>
					<li><a href="./join.jsp"><%= sign %></a></li>
				</ul>
			</div>
		</div>

	<header>
	<!-- 머리 -->
		<div>
			<a href="index.jsp"><img src="./images/title.png" alt="좋은날엔희소식"/></a>
		</div>	
	</header>

	<nav>
	<!-- 메인메뉴와 하위메뉴 -->
	<div id="navBar">
		<div id="mainMenu">
			<ul>
				<li class="topMenuli"><a class="topMenulink" href="notice.jsp">공지사항</a></li>
				<li class="topMenuli"><a class="topMenulink" href="news.jsp">미소짓는 뉴스</a></li>
				<li class="topMenuli"><a class="topMenulink" href="sns.jsp">희소식 담벼락</a></li>
				<li class="topMenuli"><a class="topMenulink" href="blog.jsp">글담은 온돌방</a></li>
				<li class="topMenuli"><a class="topMenulink" href="post.jsp">행복 우체통</a></li>
				<li class="topMenuli"><a class="topMenulink" href="#" style="cursor:default;">나를 위한 공간</a>
					<ul class="subMenu">
						<li><a class="subMenulink" href="membership.jsp">나의 정보 수정</a></li>
						<li><a class="subMenulink" href="memberScrap.jsp">스크랩 보기</a></li>
						<li><a class="subMenulink" href="memberLetter.jsp">내가 쓴 편지</a></li>
					</ul>
				</li>
				<li class="topMenuli"><a class="topMenulink" href="#" style="cursor:default;">고민해결</a>
					<ul class="subMenu">
						<li><a class="subMenulink" href="qna.jsp">Q n A</a></li>
						<li><a class="subMenulink" href="advice.jsp">상담 하기</a></li>
						<li><a class="subMenulink" href="mail.jsp">메일 보내기</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	</nav>



	<%
			if(rs.next()) {
		
				String title = rs.getString(1);
				String date = rs.getString(2);
				String content = rs.getString(3);
				String link = rs.getString(4);
				String image = rs.getString(5);
	%>


	<section>
	<!-- 본문 -->

	<div class="border">
		<form method="post" action="#">
		<div class="font">
			<h2><%= title %><h2>
			<h5>뉴스 일자  <%= date %><h5>
			<p>
			<a href="writeUpdate.jsp"><img src="./images/b_update.png" width="25px" height="25px"/></a>
			<a href="<%= scrap %>" target="_blank"><img src="./images/b_delete.png" width="25px" height="25px"/></a>
			</p>
		</div>
		

		<div class="font_div">
		<% if(!(image == null || image.equals("") || image.equals("null") || image.length() == 0)) { %>
			<div class="contentImage"><img src="<%= image %>" width="400px;" height="250px;"/></div>
		<% } %>
		<%= content %>

		</div>

		</form>

		<% if(!(link == null || link.equals("") || link.equals("null") || link.length() == 0)) { %>
		<div class="font_bottom">
			<h5><a href="<%= link %>"> - <%= title %> </a><h5>
		</div>
		<% } %>
	</div>

		
	<% } %>

	<article>
	<!-- -->
	</article>


	</section>


	<footer>
	<!-- 바닥 -->
	<div id="footer">
        <div class="footerMenu">
            <ul>
				<li><a href="http://blog.naver.com/mdot2010">석지민</a></li>
                <li><a href="http://blog.naver.com/hello6209">이우영</a></li>
                <li><a href="http://blog.daum.net/chutedeau">진연경</a></li>
            </ul>
			<img src="./images/logo.png" width="90px" height="40px;" alt="좋은날엔희소식"/>
		</div>
		<p class="copyright" style="cursor:text;"> Copyright © 2016 Color of Delight Group</p>
    </div>

	</footer>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/x_nav/jquery.fatNav.min.js"></script>
    <script type="text/javascript" src="js/x_nav.js"></script>
  
 </body>
</html>

<%@ include file="./include/DBFooter.jsp" %>
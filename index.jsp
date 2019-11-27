<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<% session.setAttribute("requestpage", ""); 
		int cnt = 0;
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
	<link rel="stylesheet" type="text/css" href="./css/table.css">
  <link rel="stylesheet" href="js/x_nav/jquery.fatNav.min.css">
  <title>좋 은 날 엔 희 소 식</title>

	<script type="text/javascript" src="./js/modernizr.custom.04022.js"></script>

 </head>

	<style>	
	</style>

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

	<section>
	<!-- 본문 -->

		<div>
			<!-- 슬라이더 -->
			
			<div class="sp-slideshow"><!-- ref : http://hipsteripsum.me -->
			
				<input id="button-1" type="radio" name="radio-set" class="sp-selector-1" checked="checked" />
				<label for="button-1" class="button-label-1"></label>
				
				<input id="button-2" type="radio" name="radio-set" class="sp-selector-2" />
				<label for="button-2" class="button-label-2"></label>
				
				<input id="button-3" type="radio" name="radio-set" class="sp-selector-3" />
				<label for="button-3" class="button-label-3"></label>
				
				<input id="button-4" type="radio" name="radio-set" class="sp-selector-4" />
				<label for="button-4" class="button-label-4"></label>
				
				<input id="button-5" type="radio" name="radio-set" class="sp-selector-5" />
				<label for="button-5" class="button-label-5"></label>
				
				<label for="button-1" class="sp-arrow sp-a1"></label>
				<label for="button-2" class="sp-arrow sp-a2"></label>
				<label for="button-3" class="sp-arrow sp-a3"></label>
				<label for="button-4" class="sp-arrow sp-a4"></label>
				<label for="button-5" class="sp-arrow sp-a5"></label>
				
				<div class="sp-content">
					<div class="sp-parallax-bg"></div>
					<ul class="sp-slider clearfix">
			
	<%
		String sqlList = "SELECT Write_title, Write_num FROM "+ TABLE_WRITE +" WHERE Write_kind='공지사항' order by Write_date desc";

		rs = stmt.executeQuery( sqlList );
	%>
						<li>
							<img src="./images/indeximage/notice.png" width="300px;"/>
							<table class="showtable">
	<% 
			cnt = 0;
			while(rs.next() && cnt < 8){
				String title = rs.getString(1);
				String link = "board.jsp?table=" + rs.getString(2);
				cnt++;
	%>
								<tr>
									<td><a href="<%= link %>" class="fitle"><%= title %></a></td>
								</tr>
	<% } %>
							</table>
						</li>
	<%
		sqlList = "SELECT Write_title, Write_num FROM "+ TABLE_WRITE +" WHERE Write_kind='NEWS' order by Write_date desc";

		rs = stmt.executeQuery( sqlList );
	%>
						<li>
							<img src="./images/indeximage/news.png" width="300px;"/>
							<table class="showtable">
	<% 
			cnt = 0;
			while(rs.next() && cnt < 8){
				String title = rs.getString(1);
				String link = "board.jsp?table=" + rs.getString(2);
				cnt++;
	%>
								<tr>
									<td><a href="<%= link %>" class="fitle"><%= title %></a></td>
								</tr>
	<% } %>
							</table>
						</li>

	<%
		sqlList = "SELECT Write_title, Write_num FROM "+ TABLE_WRITE +" WHERE Write_kind='SNS' order by Write_date desc";

		rs = stmt.executeQuery( sqlList );
	%>

						<li>
							<img src="./images/indeximage/sns.png" width="300px;"/>
							<table class="showtable">
	<% 
			cnt = 0;
			while(rs.next() && cnt < 8){
				String title = rs.getString(1);
				String link = "board.jsp?table=" + rs.getString(2);
				cnt++;
	%>
								<tr>
									<td><a href="<%= link %>" class="fitle"><%= title %></a></td>
								</tr>
	<% } %>
							</table>
						</li>
	<%
		sqlList = "SELECT Write_title, Write_num FROM "+ TABLE_WRITE +" WHERE Write_kind='블로그' order by Write_date desc";

		rs = stmt.executeQuery( sqlList );
	%>

						<li>
							<img src="./images/indeximage/blog.png" width="300px;"/>
							<table class="showtable">
	<% 
			cnt = 0;
			while(rs.next() && cnt < 8){
				String title = rs.getString(1);
				String link = "board.jsp?table=" + rs.getString(2);
				cnt++;
	%>
								<tr>
									<td><a href="<%= link %>" class="fitle"><%= title %></a></td>
								</tr>
	<% } %>
							</table>
						</li>
						<li>
							<img src="./images/indeximage/post.png" width="300px;"/>
							<table class="showtable">
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
								<tr>
									<td>내용이 들어갑니다.</td>
								</tr>
							</table>
						</li>
					</ul>
				</div><!-- sp-content -->		
			</div><!-- sp-slideshow -->
		</div>
	

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
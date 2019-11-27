<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<%
			if(userid == null || userid.equals("") || userid.equals("null") || userid.length() == 0) {
				session.setAttribute("requestpage", "memberLetter.jsp");
				response.sendRedirect("login.jsp");
			}
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
  <link rel="stylesheet" type="text/css" href="./css/table.css">
  <link rel="stylesheet" type="text/css" href="./css/style.css">
  <link rel="stylesheet" href="js/x_nav/jquery.fatNav.min.css">
  <title>좋 은 날 엔 희 소 식</title>

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

	<section>
	<!-- 본문 -->

		<form class="imageWrite" method="post" action="#">

		<img src="./images/myletter.png" width="250px" alt="내가 쓴 편지"/>

		<table class="tbl_type" border="1" cellspacing="0">
				<caption>편지</caption>
				<tr class="menuTitle">
					<th scope="col" width="10%;"><img src="./images/writing/num.png" width="50px" /></th>
					<th scope="col"><img src="./images/writing/title.png" width="50px" /></th>
					<th scope="col" width="20%;"><img src="./images/writing/date.png" width="50px" /></th>
					<th scope="col" width="20%;"><img src="./images/writing/choice.png" width="50px" /></th>
				</tr>
			<tbody>
				<tr>
					<td>1</td>
					<td>하이루</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>2</td>
					<td>오늘은 날씨가 좋네요</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>3</td>
					<td>룰룰</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>4</td>
					<td>반갑습니다</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>5</td>
					<td>냥냥펀치</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>6</td>
					<td>뀨</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>7</td>
					<td>ㅇㅇㅇ</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
				<tr>
					<td>8</td>
					<td>ㄱㄱㄱ</td>
					<td>20150526</td>
					<td><input type="checkbox" /></td>
				</tr>
			</tbody>
		</table>	

		<!-- 글쓰기 이미지 -->

			<p align='right'>
			<input type="image" src="./images/latter.png" style="width:30px;height:30px;margin-right:30px;" alt="편지쓰기" />
			<input type="image" src="./images/delete.png" style="width:30px;height:30px;margin-right:7px;" alt="삭제" />
			</p>

		</form>	

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
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

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

	<script language="javascript">
	
		function back()
		{
			history.back();
		}

	</script>

 </head>
	<style>
		.menuTitle {
			text-align:center;
			padding-top:5px;
			padding-bottom:5px;
			font-size:12px;
			margin:5px auto;
			transition:background-color 0.5s ease;
		}
		.menuTitle:hover {
			background-color: rgba(0, 0, 0, 0.3);
			transition:background-color 0.5s ease;
		}
		.Textarea {
		padding:6px 5px 5px;
		background:#f7ff7f7;
		resize:none;
		line-height:1.6;
		}
		.Input {
		float:left;
		text-align:left;
		background:#f7ff7f7;
		}
		#regform {
		margin:0 auto;
		width:500px;
		margin-bottom:30px;
		margin-top:30px;
		font-family:"맑은 고딕";
		border:1px solid #dcdcdc;
		}
		#category {
		float:left;
		}
		.Table {
		margin-bottom:10px;
		}
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

		<form id="regform" name="regform" method="post">

		<img src="./images/mailpost.png" width="250px" alt="메일"/>

		<table class="Table">
			<caption></caption>
			<colgroup>
				<col style="width:150px">
				<col>
			</colgroup>
				<tr>
					<th><img src="./images/writing/email.png" width="55px" /></th>
					<td>
						<input type="text" title="이메일 주소">
						<span>@</span>
						<select title="이메일 도메인 선택" style="min-width:100px;margin-right:23px;">
						<option value="">선택</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>								
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
						</select>
					</td>
				</tr>
				<tr>
					<th><img src="./images/writing/title.png" width="55px" /></th>
					<td>
						<input type="text" class="Input" title="제목" id="title" name="title" style="width:60%">
					</td>
				</tr>
				<tr>
					<th><img src="./images/writing/content.png" width="55px" /></th>
					<td>
						<textarea class="Textarea" title="내용" name="content" style="width:310px; height:150px"></textarea>
					</td>
				</tr>
		</table>

		<p align='right'>
		<input type="image" src="./images/mail.png" style="width:30px;height:30px;margin-right:30px;" alt="보내기" />
		<input type="image" src="./images/back2.png" style="width:30px;height:30px;margin-right:30px;" alt="뒤로가기" onclick='back()'/>
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
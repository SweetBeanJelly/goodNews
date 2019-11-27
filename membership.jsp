<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>


<%
			if(userid == null || userid.equals("") || userid.equals("null") || userid.length() == 0) {
				session.setAttribute("requestpage", "membership.jsp");
				response.sendRedirect("login.jsp");
			}

			String sqlList = "SELECT `id`,`pw`,`name`,`email`,`phone` FROM " + TABLE_USER + " WHERE id = '" + userid + "'";

			rs = stmt.executeQuery( sqlList );
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
		function back()
		{
			history.back();
		}

		function showKeyCode(event) {
			event = event || window.event;
			var keyID = (event.which) ? event.which : event.keyCode;
			if( ( keyID >=48 && keyID <= 57 ) || ( keyID >=96 && keyID <= 105 ) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 )
			{
				return;
			}
			else
			{
				return false;
			}
		}
	</script>

 </head>
	<style>
	#join
	{
		width:800px;
		margin:0 auto;
		margin-bottom:50px;
		font-family:"맑은 고딕";
		font-size:13px;
	}
	table, td
	{
		margin:0 auto;
		margin-bottom:20px;
		border:1px solid #dcdcdc;
	}
	table
	{
		border-collapse:collapse;
		width:500px;
	}
	td
	{
		padding:5px;
	}
	.input {
		text-align:left;
	}
	.btn
	{
		margin:5px 25px 5px 33px;
	}
	select option {
		font-family:"맑은 고딕";
	}
	.bottom {
	margin:0 auto;
	margin-bottom:30px;
	border:1px solid #dcdcdc;
	width:500px;
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

	<%
		if(rs.next()) {
			String id = rs.getString(1);
			String name = rs.getString(3);
	%>


	<section>
	<!-- 본문 -->
		<div>
			<form id="join" method="post" action="update.jsp">
				<img src="./images/mebmerup.png" width="250px" alt="정보 수정"/>
					<table>
					  <tr>
						<td><img src="./images/writing/name.png" width="55px" /></td>
						<td class="input"><input type="text" name="name" value="<%= name %>"/></td>
					  </tr>
					  <tr>
						<td><img src="./images/writing/id.png" width="100px" /></td>
						<td class="input"><input style="background-color:gray;" type="text" name="id" value="<%= id %>" readonly required /></td>
					  </tr>
					  <tr>
						<td><img src="./images/writing/pwd.png" width="100px" /></td>
						<td class="input"><input type="password" name="pwd" required /></td>
					  </tr>
					  <tr>
						<td><img src="./images/writing/pwdcheck.png" width="100px" /></td>
						<td class="input"><input type="password" name="pwdcheck" /></td>
					  </tr>
					  <tr>
						<td><img src="./images/writing/addr.png" width="55px" /></td>
						<td class="input">
							<select title="연락처" name="tel">
								<option value="">선택</option>
								<option value="010">010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="018">018</option>
							</select>
							<span>-</span>
							<input title="연락처 첫번째" style="width:50px" maxlength="4" name="tel2" onkeydown="return showKeyCode(event)">
							<span>-</span>
							<input title="연락처 두번째" style="width:50px" maxlength="4" name="tel3" onkeydown="return showKeyCode(event)">
						</td>
					  </tr>
					  <tr>
						<td><img src="./images/writing/email.png" width="55px" /></td>
						<td class="input">
							<input type="text" title="이메일 주소" name="email">
							<span>@</span>
							<select title="이메일 도메인 선택" style="min-width:120px" name="emailchoice">
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
						<td colspan="2" style="text-align:center;">
						<input class="btn" type="image" src="./images/ok.png" width="30px" height="30px" onclick='' />
						<input class="btn" type="image" src="./images/cancel.png" width="30px" height="30px" onclick='return back()'/>
						</td>
					  </tr>
					</table>
			</form>
		</div>

		<% } %>

		<div class="bottom">
		<a href="memberScrap.jsp"><img src="./images/scrapgo.png" width="130px" height="40px" /></a>
		<a href="memberLetter.jsp"><img src="./images/lettergo.png" width="130px" height="40px" /></a>
		<a href="memberDelete.jsp"><img src="./images/memberdelete.png" width="130px" height="40px" /></a>
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
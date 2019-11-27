<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>


<%
			request.setCharacterEncoding("UTF-8");

			if(userid == null || userid.equals("") || userid.equals("null") || userid.length() == 0) {
				session.setAttribute("requestpage", "memberScrap.jsp");
				response.sendRedirect("login.jsp");
			}

	int total = 0;
		sql = new StringBuffer();
		sql.append(" SELECT COUNT(*) FROM " + TABLE_SCRAP+" a, "+ TABLE_WRITE +" b WHERE a.USERuser_id='" + userid + "'");

		rs = stmt.executeQuery( sql.toString() );

		//만약 셀렉문에서 서치된 COUNT가 0일 경우 게시글이 없으므로 HTML 바디에서 출력을 해주지 않기 위한 구문
		if(rs.next()){
				total = rs.getInt(1);
		}

		String sqlList = "SELECT a.WriteWrite_num, b.Write_title, b.Write_date, b.Write_kind FROM "+ TABLE_SCRAP+" a, "+ TABLE_WRITE +" b WHERE a.WriteWrite_num=b.Write_num AND a.USERuser_id='" + userid + "' order by b.Write_date desc";

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
  <link rel="stylesheet" type="text/css" href="./css/table.css">
  <link rel="stylesheet" type="text/css" href="./css/style.css">
  <link rel="stylesheet" href="js/x_nav/jquery.fatNav.min.css">
  <title>좋 은 날 엔 희 소 식</title>

	<script language="javascript">
		function articleSearch()
		{

			var f = document.formSearch;

			if (f.q.value == '') {

				alert('검색어를 입력하세요.');
				f.q.focus();
				return false;

			}

			return true;

		}
	</script>

 </head>
	<style>
	.search {
	font-size:"맑은 고딕";
	width:350px;
	margin:0 auto;
	padding:0 auto;
	margin-bottom:30px;
	text-align:center;
	overflow:hidden;
	}
	.search ul li {
		list-style:none;
		float:left;
	}
	.select {
		margin-right:5px;
		padding-bottom:1px;
	}
	.searchInput {
		padding-top:3px;
		margin-right:5px;
	}
	.search_btn {
		font-family:"맑은 고딕";
		font-size:11px;
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

		<img src="./images/scrap.png" width="250px" alt="스크랩"/>

		<table class="tbl_type" border="1" cellspacing="0" style="margin-bottom:30px;">
				<caption>뉴스</caption>
				<tr>
					<th scope="col"><img src="./images/writing/num.png" width="50px" /></th>
					<th scope="col"><img src="./images/writing/title.png" width="50px" /></th>
					<th scope="col"><img src="./images/writing/date.png" width="50px" /></th>
					<th scope="col"><img src="./images/writing/categori.png" width="50px" /></th>
					<th scope="col"><img src="./images/writing/scrap.png" width="50px" /></th>
				</tr>
			<tbody>
				</tr>
				<%
				if(total==0) { 
			%>
				 <tr align="center" bgcolor="#FFFFFF" height="30">
					 <td colspan="6">등록된 글이 없습니다.</td>
						</tr>
			<%
				} else {
					 while(rs.next()) {
						 
						 int idx = total;
						 total = total - 1;
						 String title = rs.getString(2);
						 String date = rs.getString(3);
						 String kind = rs.getString(4);
						 String link = "board.jsp?table=" + rs.getString(1);
			%>
						<tr>
							<td><%= idx %></td>
							<td><a href="<%= link %>" class="title"><%= title %></td>
							<td><%= date %></td>
							<td><%= kind %></td>
							<td><input type="image" src="./images/delete.png" style="width:30px;height:30px;" alt="삭제" /></td>
						</tr>
			<% }} %>
			</tbody>
		</table>


			<form method="get" name="formSearch" action="#" onSubmit="return articleSearch();" autocomplete="off">
				<input type="hidden" name="bbs_id" value="notice" />

				<div class="search">
					<ul>
						<li>
							<select name="f" class="select">
								<option value="">선택</option>
								<option value="ar_title">제목</option>
								<option value="ar_content">내용</option>
<!-- 								<option value="ar_name">작성자</option> -->
<!-- 								<option value="user_id">아이디</option> -->
							</select>
						</li>
						<li><input type="text" name="q" title="검색어 입력" class="searchInput" value="" /></li>
						<li><input type="image" class="search_btn" src="./images/search.png" style="width:25px;height:25px;" alt="검색하기" /></li>
					</ul>
				</div>
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
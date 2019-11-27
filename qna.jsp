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
  <link rel="stylesheet" type="text/css" href="./css/style.css">
  <link rel="stylesheet" href="js/x_nav/jquery.fatNav.min.css">

  <title>좋 은 날 엔 희 소 식</title>

	</script>

 </head>
	<style>
		ul {
		padding:0 auto;
		margin:0 auto;
		}
		ul li {
		list-style:none;
		}

		.list-title {
		border-top:1px solid #505050;
		border-bottom:1px solid #505050;
		text-align:center;
		padding:5px;
		width:100%;
		background-color:#d0282d;
		transition:background-color 0.5s ease;
		}
		.list-title:hover {
		background-color:white;
		transition:background-color 0.5s ease;
		}
		.tbl_head01 h3 {
		display:inline-block;
		font-weight:normal;
		}
		.tbl_head01 h3 a {
		text-decoration:none
		}
		.tbl_head01 ul li {
		padding:8px 20px 8px 0;
		}
		#fboardlist {
		overflow:auto;
		overflow-x:hidden;
		margin:0 auto;
		width:100%;
		height:300px;
		margin-bottom:30px;
		}
		#fd_accordion li {
		border-bottom:1px solid #d5d5d5;
		width:700px;
		margin:0 auto;
		}
		.accordion div {
		font-size:12px;
		margin:0 auto;
		width:500px;
		color:#d0282d;
		}

	</style>

	<script language="javascript">
	function show(id){
	if (document.getElementById(id).style.display=="none")
		document.getElementById(id).style.display="block"; //표시하게 하기
	else
		document.getElementById(id).style.display="none"; //안보이게 하기
	}

</script>

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

		<img src="./images/qna.png" width="250px" alt="QnA"/>

		<form name="fboardlist" id="fboardlist" action="#" method="post">
			<div class="tbl_head01 tbl_wrap">
			<div class="list-title">
				<ul>
					<li><img src="./images/writing/ask.png" width="150px" /></li>
				</ul>
			</div>
				<ul id="fd_accordion" class="accordion">
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div10');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div10" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div9');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div9" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div8');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div8" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div7');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div7" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div6');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div6" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div5');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div5" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div4');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div4" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div3');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div3" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div2');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div2" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
					<li>
						<span class="fd_num">10</span>
						<a onclick="show('div1');">장ㄷㄹㄷㄹㄷㄹ</a>
						<div id="div1" style="visibility: visible; display: none;">
							<span style="margin:0 auto;"> 안뇽하세요 </span>
						</div>
					</li>
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
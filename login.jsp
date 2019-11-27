<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<!doctype html>
<html>
 <head>

<%
	String useridid = isNull((String)session.getAttribute("userid"));

	if(!(useridid == null || useridid.equals("") || useridid.equals("null") || useridid.length() == 0)){
		session.setAttribute("userid", "");
		session.setAttribute("username", "");
		response.sendRedirect("index.jsp");
	}


	String userid = isNull(request.getParameter("id"));
	String passwd = isNull(request.getParameter("pwd"));

	sql = new StringBuffer();
	sql.append(" SELECT * FROM " + TABLE_USER);
	sql.append(" WHERE id ='"+userid+"' ");
	sql.append(" AND pw ='"+passwd+"' ");

	rs = stmt.executeQuery( sql.toString() );

	if(rs.next()) {
			session.setAttribute("userid", userid);
			session.setAttribute("username", rs.getString("name"));
			rs.close();
			
			String link = isNull((String)session.getAttribute("requestpage"));

			if(link == null || link.equals("") || link.equals("null") || link.length() == 0){
				response.sendRedirect("index.jsp");
			} else {
				response.sendRedirect(link);
			}

		} else if (!(userid == null || userid.equals("") || userid.equals("null") || userid.length() == 0)){
			%><script language="javascript">alert("정보를 정확히 입력해주세요.");</script><%
	}
%>

   <meta charset="UTF-8">
  <meta name="Author" content="COD-G">
  <meta http-equiv="Imagetoolbar" content="no">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <link rel="stylesheet" type="text/css" href="./css/main.css">
  <link rel="stylesheet" type="text/css" href="./css/submenu/normalize.css" />
  <link rel="stylesheet" type="text/css" href="./css/submenu/demo.css" />
  <link rel="stylesheet" type="text/css" href="./css/submenu/style.css" />
  <script src="./js/submenu/modernizr.custom.js"></script>
  <title>좋 은 날 엔 희 소 식</title>

	<script language="javascript">

		function chk(){
		if (login.id.value=="")
			{
					alert("아이디를 입력하세요");
					document.getElementById('id').focus();
					return false;
			}
			if (login.pwd.value=="")
			{
					alert("비밀번호를 입력하세요");
					document.getElementById('pwd').focus();
					return false;
			}
		return true;
		}

		function back()
		{
			history.back();
			return false;
		}

	</script>

 </head>
	<style>
		#form {
			font-family:"맑은 고딕";
			font-size:13px;
			color:#505050;
			text-align:center;
			margin:0 auto;
			padding:10px;
			border:1px solid gray;
			width:100%;
			height:200px;
		}
		#form:hover {
			border:1px solid black;
		}
		.form-group {
			text-align:center;
			margin:0 auto;
		}
		.input {
			float:left;
		}
		.btn {
			margin:15px 20px 10px 30px;
		}
		.img {
			margin-right:10px;
		}
	</style>
 <body>

		<div class="container">
			<nav id="bt-menu" class="bt-menu">
				<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
				<ul>
					<li><a href="notice.jsp"><b>공지 사항</b></a></li>
					<li><a href="news.jsp"><b>미소짓는 뉴스</b></a></li>
					<li><a href="sns.jsp"><b>희소식 담벼락</b></a></li>
					<li><a href="blog.jsp"><b>글담은 온돌방</b></a></li>
					<li><a href="post.jsp"><b>행복 우체통</b></a></li>
					<li><a href="join.jsp"><b>회원가입</b></a></li>
				</ul>
			</nav>
		</div>

	<header>
	<!-- 머리 -->
		<div>
			<a href="index.jsp"><img src="./images/title.png" alt="좋은날엔희소식"/></a>
		</div>	
	</header>

	<section style="width:500px;padding:10px;">
	<!-- 본문 -->
		<div id="form">
			<img src="./images/login.png" width="250px" alt="로그인"/>
		  <form name="login" method="post" action="login.jsp">
			<table class="form-group">
				<tr>
					<td><img class="img" src="./images/writing/loginid.png" width="40px;" /></td>
					<td><input class="input" type="text" name='id' id="id" placeholder="아이디를 입력하세요" style="width:200px;"></td>
				</tr>
				<tr>
					<td><img class="img" src="./images/writing/loginpwd.png" width="55px;" /></td>
					<td><input class="input" type="password" name='pwd' id="pwd" placeholder="비밀번호를 입력하세요" style="width:200px;"></td>
				</tr>
			</table>
			  <input class="btn" type="image" src="./images/check.png" width="30px" height="30px" onclick='return chk()'/>
			  <input class="btn" type="image" src="./images/back.png" width="30px" height="30px" onclick='return back()'/>
		  </form>
		</div>

	<article>
	<!-- -->
	</article>


	</section>

	<script src="js/submenu/classie.js"></script>
	<script src="js/submenu/borderMenu.js"></script>
  
 </body>
</html>

<%@ include file="./include/DBFooter.jsp" %>
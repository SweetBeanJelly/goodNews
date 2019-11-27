<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	String pwd = request.getParameter("pwd");
	if(!(pwd == null || pwd.equals("") || pwd.equals("null") || pwd.length() == 0)){
		String sqlList = "SELECT pw FROM "+ TABLE_USER +" WHERE id = '" + userid + "'";
		rs = stmt.executeQuery( sqlList );
		if(rs.next()) {
			String pw = rs.getString(1);
			if(pw.equals(pwd)) {
				sqlList = "DELETE FROM " + TABLE_USER + " WHERE id = '"+ userid +"'";
				stmt.executeUpdate(sqlList);
				session.setAttribute("userid", "");
				session.setAttribute("username", "");
				response.sendRedirect("index.jsp");
			}
		}


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
  <link rel="stylesheet" type="text/css" href="./css/submenu/normalize.css" />
  <link rel="stylesheet" type="text/css" href="./css/submenu/demo.css" />
  <link rel="stylesheet" type="text/css" href="./css/submenu/style.css" />
  <script src="./js/submenu/modernizr.custom.js"></script>
  <title>좋 은 날 엔 희 소 식</title>

	<script language="javascript">

		function back()
		{
			history.back();
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
			padding:20px;
			border:1px solid gray;
			width:100%;
			height:200px;
		}
		#form:hover {
			border:1px solid black;
		}
		.form-group {
			text-align:center;
			margin:auto;
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
			<img src="./images/mdelete.png" width="200px" alt="회원탈퇴"/>
			
		  <form name="login" method="post" action="memberDelete.jsp">
			<div class="form-group">
			  <table class="form-group">
				<tr>
					<td><img class="img" src="./images/writing/loginpwd.png" width="55px;" /></td>
					<td><input type="password" name="pwd" placeholder="비밀번호를 입력하세요" style="width:200px;"></td>
				</tr>
			</table>
			  <input class="btn" type="image" src="./images/deletehilarious.png" width="30px" height="30px"/>
			  <input class="btn" type="image" src="./images/deletekiss.png" width="30px" height="30px" onclick='back()'/>
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
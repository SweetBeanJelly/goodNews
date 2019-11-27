<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<% 
	sql = new StringBuffer();
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String tel = request.getParameter("tel");
	String tel2 = request.getParameter("tel2");
	String tel3 = request.getParameter("tel3");
	String email = request.getParameter("email");
	String emailchoice = request.getParameter("emailchoice");

	boolean sw = false;

	sql.append(" UPDATE " + TABLE_USER + " SET ");

	if(!(name == null || name.equals("") || name.equals("null") || name.length() == 0)){
		sql.append("name='" + name + "'");
		sw = true;
	}

	if(!(pwd == null || pwd.equals("") || pwd.equals("null") || pwd.length() == 0)){
		if(sw == true) {
			sql.append(",");
		}
		
		sql.append("pw='" + pwd + "'");
		sw = true;
	}

	if(!(email == null || email.equals("") || email.equals("null") || email.length() == 0)){
		if(sw == true) {
			sql.append(",");
		}
		
		sql.append("email='" + email + "@" + emailchoice + "'");
		sw = true;
	}

	if(!(tel == null || tel.equals("") || tel.equals("null") || tel.length() == 0)){
		if(sw == true) {
			sql.append(",");
		}
		
		sql.append("phone='" + tel + tel2 + tel3 + "'");
	}

	sql.append(" WHERE id='" + userid + "'");

	stmt.executeUpdate( sql.toString() );

	response.sendRedirect("index.jsp");
%>

<%@ include file="./include/DBFooter.jsp" %>
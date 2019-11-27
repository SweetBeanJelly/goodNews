<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>

<%
	request.setCharacterEncoding("UTF-8");

	sql = new StringBuffer();
	sql.append(" Insert into " + TABLE_USER + "(`name`,`id`,`pw`, `phone`, `email`) values( ");
	sql.append("'"+request.getParameter("name")+"',");
	sql.append("'"+request.getParameter("id")+"',");
	sql.append("'"+request.getParameter("pwd")+"',");
	sql.append("'"+request.getParameter("tel"));
	sql.append(request.getParameter("tel2"));
	sql.append(request.getParameter("tel3")+"',");
	sql.append("'"+request.getParameter("email")+"@");
	sql.append(request.getParameter("emailchoice")+"')");
		
	out.print(sql.toString());
	stmt.executeUpdate(sql.toString());
	response.sendRedirect("index.jsp");
%>

<%@ include file="./include/DBFooter.jsp" %>
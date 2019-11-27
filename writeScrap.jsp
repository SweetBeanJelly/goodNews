<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./include/Import.jsp" %>
<%@ include file="./include/Public.jsp" %>
<%@ include file="./include/Utility.jsp" %>
<%@ include file="./include/role.jsp" %>
<%@ include file="./include/DBHeader.jsp" %>
<%

	String num = request.getParameter("table");
	
	String sqlList = "SELECT Write_kind, Write_date FROM " + TABLE_WRITE + " WHERE Write_num=" + num;

	String kind = "";
	String date = "";

	rs = stmt.executeQuery( sqlList );

	if(rs.next()) {
		kind = rs.getString(1);
		date = rs.getString(2);

		String sqlList2 = "Insert into scrap(USERuser_id,WriteWrite_num,scrap_date,scrap_kind) values('" + userid + "','" + num + "','" + date + "','" + kind + "')";

		stmt.executeUpdate( sqlList2 );
	}
	
	

%>
<script languege="javascript"> window.open('about:blank','_self').self.close(); </script>
<%@ include file="./include/DBFooter.jsp" %>
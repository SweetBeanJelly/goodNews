<%
	String userid = isNull((String)session.getAttribute("userid"));
	String username = isNull((String)session.getAttribute("username"));

	String log = "Log In";
	String sign = "Sign Up";
	if(!(userid == null || userid.equals("") || userid.equals("null") || userid.length() == 0)){
		log = "Log Out";
		sign = "";
	}
%>
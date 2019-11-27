<%
	Connection conn = null;
	Statement stmt = null ;
	Statement stmt2 = null ;
	ResultSet rs = null;
	ResultSet rs2 = null;
	StringBuffer sql = new StringBuffer();

	Class.forName(DRIVER);

	try {

		//get Connection
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		conn.setAutoCommit(false);
		stmt = conn.createStatement();
		stmt2 = conn.createStatement();
		
%>
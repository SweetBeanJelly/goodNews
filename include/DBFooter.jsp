<%

		conn.commit();
	} catch(Exception e) {

		if ( conn != null ) try { conn.rollback(); } catch( Exception exf ){}

		out.println("<font color=red><b>"+e.toString()+"</b></font>");
		out.close();
		e.printStackTrace();

	} finally {
		if ( rs != null ) try { rs.close(); } catch( Exception exf ){}
		if ( rs2 != null ) try { rs2.close(); } catch( Exception exf ){}
		if ( stmt != null ) try { stmt.close(); } catch( Exception exf ){}
		if ( stmt2 != null ) try { stmt2.close(); } catch( Exception exf ){}
		if ( conn != null ) try { conn.close(); } catch( Exception exf ){}
	}
%>
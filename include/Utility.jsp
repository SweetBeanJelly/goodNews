<%!
	/////////////////////////////////////////////////////////////
	public String isNull(String str, String rtn) {
		if(str == null || str.equals("") || str.equals("null") || str.length() == 0) return rtn;
		else return str;
	}

	/////////////////////////////////////////////////////////////
	public String isNull(String str) {
		if(str == null || str.equals("") || str.equals("null") || str.length() == 0) return "";
		else return str;
	}

	/////////////////////////////////////////////////////////////
	public int isNull(String str, int rtn) {
		if(str == null || str.equals("") || str.equals("null") || str.length() == 0) return rtn;
		else return Integer.parseInt(str);
	}

	/////////////////////////////////////////////////////////////
%>
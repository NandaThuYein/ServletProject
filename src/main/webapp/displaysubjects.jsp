<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String [] subject=request.getParameterValues("sub");
	if (subject!=null) {
		out.println("Your Professional is :<br/>");
		int t=0;
		for(String s:subject) {
			t++;
		out.println(t+"."+" "+s+"<br/>");
		} 
	}
	else { 
			request.setAttribute("msg", "Choose One!!!");
			request.getRequestDispatcher("choosesubjects.jsp").include(request,response);

	}
	%>
</body>
</html>
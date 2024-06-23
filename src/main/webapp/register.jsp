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
 out.println("Name   :"+request.getParameter("name")+"<br>");
 out.println("DOB    :"+request.getParameter("Date")+"<br>");
 out.println("Gender :"+request.getParameter("gender")+"<br>");
 String [] subject=request.getParameterValues("subject");
int t=0;
for(String s:subject) {
	t++;
out.println("Subject"+t+" :"+s+"<br>");
}
%>
</body>
</html>

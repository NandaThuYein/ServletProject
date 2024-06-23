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
	out.println("Your Professional is : <br>");
	int t=0;
	for(String s:subject) {
		t++;
		pageContext.setAttribute("sub1",s,PageContext.SESSION_SCOPE);
		String i=(String)pageContext.getAttribute("sub1",PageContext.SESSION_SCOPE);
		out.println(t+"."+" "+i+"<br>");
	}
}
else  {
	out.println("<script>");
		out.println("document.getElementById('demo').innerHTML = 'Choose One!!!!' ");
		out.println("</script>");
	   request.getRequestDispatcher("/JSPpart2.jsp").include(request,response);
 }
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p style="color:red;">${msg}</p>
	<form action="displaysubjects.jsp" method="post">
Select Subject :
 <select name="sub" multiple>
<option>Java</option>
<option>PHP</option>
<option>ASP.Net</option>
<option>Android</option>
</select>
<input type="submit" value="Choose">
</form>
</body>
</html>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="PersonServlet">
<input type="submit" value="Refresh">
</form>
<jsp:useBean id="person" type="foo.Person" class="foo.Employee" scope="request"/>
<jsp:useBean id="other" class="foo.Employee" scope="request"/>
<jsp:getProperty property="name" name="person"/><br>
EL Results : ${other.anotherPpl.name}
</body>
</html>
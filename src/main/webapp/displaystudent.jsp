	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td {
	border: 1px solid blue;
}

th {
	text-align: center;
}
</style>
</head>
<body>
	<jsp:useBean id="userinfo" class="attend.com.student" scope="request"></jsp:useBean>
	<jsp:setProperty property="*" name="userinfo" />
	<form>
		<table style="color: blue;">
			<tr>
				<th>Label</th>
				<th>Use JSP UseBean</th>
				<th>Use Expression Language</th>
			</tr>
			<tr>
				<th>Name</th>
				<td><jsp:getProperty property="name" name="userinfo" /></td>
				<td>${userinfo.name}</td>
			</tr>
			<tr>
				<th>DOB</th>
				<td><jsp:getProperty property="date" name="userinfo" /></td>
				<td>${userinfo.date}</td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><jsp:getProperty property="gender" name="userinfo" /></td>
				<td>${userinfo.gender}</td>
			</tr>
			<tr>
				<th>Knowledge You May Know</th>
				<td>
					<%
					String[] favorite = userinfo.getFavorite();
					if (favorite != null) {
						for (String j : favorite) {
							out.println(j + ",");
						}
					}
					%>
				</td>
				<td><c:forEach var="i" items="${userinfo.getFavorite()}">
						<c:out value="${i}<br/>" />
					</c:forEach>
				</td>
			</tr>
			<tr>
				<th>Class You want to attend</th>
				<td><jsp:getProperty property="chooseone" name="userinfo" /></td>
				<td>${userinfo.chooseone}</td>
			</tr>
		</table>
	</form>
</body>
</html>

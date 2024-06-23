
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, td, th {
	border: 1px solid black;
	text-align: left;
}

th {
	text-align: center;
	background-color: yellow;
}
</style>
</head>
<body>
	<jsp:useBean id="userinfo" class="beginnersbook.com.Details"
		scope="application"></jsp:useBean>
	<jsp:setProperty property="*" name="userinfo" />
	<form>
		<table style="color: blue;">
			<tr>
				<th>Label</th>
				<th>Use JSP UseBean</th>
			</tr>
			<tr>
				<td>User Name</td>
				<td><jsp:getProperty property="username" name="userinfo" /></td>
			</tr>
			<tr>
				<td>User Password</td>
				<td><jsp:getProperty property="password" name="userinfo" /></td>
			</tr>
			<tr>
				<td>User Age</td>
				<td><jsp:getProperty property="age" name="userinfo" /></td>
			</tr>
			<tr>
				<td>Knowledge You May Know</td>
				<td>
					<%
					String[] favorite = userinfo.getfavorite();
					for (int i = 0; i < favorite.length; i++) {
						if (favorite[i] != null) {
							out.write(favorite[i] + "<br/>");
						}
					}
					%>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
td {
	text-align: left;
}
</style>
</head>
<body>
	<form action="studentServlet" method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>DOB</td>
				<td><input type="date" name="date"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><input type="radio" name="gender" value="Male">Male
					&nbsp <input type="radio" name="gender" value="Female">Female
				</td>
			</tr>
			<tr>
				<td>Knowledge You May Know</td>
				<td><input type="checkbox" name="favorite" value="HTML">HTML
					&nbsp <input type="checkbox" name="favorite" value="CSS">CSS
					&nbsp <input type="checkbox" name="favorite" value="JavaScript">JavaScript
					&nbsp <input type="checkbox" name="favorite" value="JQuery">JQuery
				</td>
			</tr>
			<tr>
				<td>Choose one class you want to attend</td>
				<td><select name="chooseone">
						<option>PHP</option>
						<option>Java</option>
						<option>ASP.Net</option>
						<option>Android</option>
				</select></td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="reset" value="Reset"> 
					<input type="submit" value="Submit">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
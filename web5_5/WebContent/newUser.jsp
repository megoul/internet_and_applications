<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	ResultSet rs = null;
%>


<html>
<head>
    <script type="text/javascript" src="js/myjs.js"></script> 
</head>
<body>

	<br /> Please signup!!
	<form method="post" action="newUser_and_forward.jsp"> 
		<table>
			<tr>
				<td>Firstname-Lastname:</td>
				<td><input type="text" name="name" size=60 /></td>
			</tr>
			<tr>
				<td>Birthdate:</td>
			 <td><input type="date" name="birthdate"  /></td>
			</tr>
			<tr>
				<td>Username:</td>
			<td><input type="text" id="username" name="username" value=<%=request.getParameter("username")%> size=12 onblur="return doWork();" /></td> 
				<td><span id="total"></span></td> 
			</tr>
			<tr>
				<td>Password:</td>
				<td><input  id="password" type="password" name="password" size=12 /></td>
			</tr>
			<tr>
				<td colspan=2><input type=submit /></td>
			</tr>
		</table>
	</form>

</body>
</html>
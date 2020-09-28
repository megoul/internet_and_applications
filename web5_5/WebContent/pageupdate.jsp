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

	<br />User: <%=(String)session.getAttribute("username")%>  make your changes!
	<form method="post" action="pageupdate_and_forward.jsp">
		<table>
			<tr>
				<td>Firstname-LastName:</td>
				<td><input type="text" id="name" name="name" size=60 /></td>
				<td><span id="total"></span></td>
			</tr>
			<tr>
				<td>Birthdate:</td>
				<td><input  id="birthdate" type="date" name="birthate" /></td>
			</tr>
			<tr>
				<td colspan=2><input type=submit /></td>
			</tr>
		</table>
	</form>

</body>
</html>
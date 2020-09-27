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
<body>
	<%
		if (   request.getParameter("username") == null || request.getParameter("password") == null 
		|| request.getParameter("birthdate") == null || request.getParameter("name") == null	
				) {
	%>

	<br /> Please signup!!
	<form method="post" action="newUser_and_forward.jsp"> 
		<table>
			<tr>
				<td>Firstname-Lastname:</td>
				<td><input type="text" name="name" size=60 /></td>
			</tr>
			<tr>
				<td>Birthdate:</td>
				<td><input type="date" name="birthdate" /></td>
			</tr>
			<tr>
				<td>Username:</td>
			<td><input type="text" name="username" size=12 value=<%=request.getParameter("username")%> /></td>
			
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" size=12 /></td>
			</tr>
			<tr>
				<td colspan=2><input type=submit /></td>
			</tr>
		</table>
	</form>

	<%
			}else {
			
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String name = request.getParameter("name");
				String birthdate = request.getParameter("birthdate");
				
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection(connectionURL, "root",
						"");
				statement = connection.createStatement();
				String sql = "INSERT INTO mytable (username, name, password, birthdate) VALUES( \"" + username  + "\" ,\"" + name + "\",\"" + password + "\",\"" + birthdate + "\") ;";					
				int result = statement.executeUpdate(sql);
				
			
			
				
					%>
	<jsp:forward page="welcome.jsp">
		<jsp:param value="<%=username%>" name="username" />
	</jsp:forward>

	<%
				
				
				
			}
		%>


</body>
</html>
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
				) {
	%>

	<br /> Please rgjre!
	<form method="post" action="newUser_and_forward.jsp">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="username" size=12 /></td>
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
				
				Class.forName("com.mysql.jdbc.Driver").newInstance();
				connection = DriverManager.getConnection(connectionURL, "root",
						"");
				statement = connection.createStatement();
				String sql = "INSERT INTO mytable (username, password) VALUES( \"" + username  + "\" ,\"" + password + "\") ;";					
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
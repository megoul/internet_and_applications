<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	ResultSet rs = null;
	ResultSet rs1=null;
%>


<html>
<body>
	<%
		if (   request.getParameter("username") == null || request.getParameter("password") == null 
				) {
	%>

	<br /> Please login!
	<form method="post" action="register_and_forward.jsp">
		<table>
			<tr>
				<td>Username:</td>
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
				String sqlSelect = "SELECT * FROM mytable WHERE username =\"" + username  + "\" ;";	
				rs = statement.executeQuery(sqlSelect);
			
				if(rs == null || !rs.next()) {
						%>
			<jsp:forward page="newUser.jsp">
					<jsp:param value="<%=username%>" name="username" />
				</jsp:forward>
			
	<%
				}
				else {
					String sqlSelect1 = "SELECT password FROM mytable WHERE username =\"" + username  + "\" ;";	
					rs1 = statement.executeQuery(sqlSelect1);
					
					while(rs1.next())
					{
						String rs2 = rs1.getString("password");	

						if(rs2.equals(password))
						{ %>
							<jsp:forward page="homepage.jsp">
							<jsp:param value="<%=username%>" name="username" />
						    </jsp:forward><%
						}
						else
						{
							%>
							<h1>
								User with username <%=username%>
								your password is wrong!
							</h1>
							Please re-enter your details
							<a href="register_and_forward.jsp">here</a>
			<%			}
					}
				}
				rs.close();
			}
		%>


</body>
</html>
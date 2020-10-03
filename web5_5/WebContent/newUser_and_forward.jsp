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
<link rel=StyleSheet href="login.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
</head>
<body>
	<%
		if (   request.getParameter("username") == null || request.getParameter("password") == null 
		|| request.getParameter("birthdate") == null || request.getParameter("name") == null	
				) {
	%>

	
	<form method="post" action="newUser_and_forward.jsp"> 
		<div class="login-box">
			<h1>Signup</h1>
			
			<div class="login-in">Name:
			<input type="text" placeholder="firstname-lastname" name="name" />
			</div>
			
			<div class="login-in">Birthdate:
			<input type="date" name="birthdate" />
			</div>
			
			<div class="login-in">Username:
			<input type="text" name="username" value=<%=request.getParameter("username")%> >
			</div>
			
			<div class="login-in">Password:
			<input type="password" placeholder="password" name="password" >
			</div>
			
			<input type=submit class="login-btn" type="button"  value="Sing up">
		</div>
	</form>

	<%
			}else {
			
				String username = request.getParameter("username");
				session.setAttribute("username",username);
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
	<jsp:forward page="homepage.jsp">
		<jsp:param value="<%=username%>" name="username" />
	</jsp:forward>

	<%
				
				
				
			}
		%>


</body>
</html>
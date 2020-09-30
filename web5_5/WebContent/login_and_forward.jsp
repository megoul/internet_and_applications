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
<head>
<link rel=StyleSheet href="login.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
</head>
<body>
	<%
		if (   request.getParameter("username") == null || request.getParameter("password") == null 
				) {
	%>

	
	<form method="post" action="login_and_forward.jsp">
		<div class="login-box">
			<h1>Login</h1>
		
			<div class="login-in">
			<input type="text" placeholder="username" name="username">
			</div>
		
			<div class="login-in">
			<input type="password" placeholder="password" name="password">
			</div>
		
			<input type=submit class="login-btn" type="button"  value="Sing in">
		</div>
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
			<jsp:forward page="newUser_and_forward.jsp">
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
						{ 
							session.setAttribute("username",username); %>
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
							<a href="login_and_forward.jsp">here</a>
			<%			}
					}
				}
				rs.close();
				rs1.close();
			}
		%>


</body>
</html>
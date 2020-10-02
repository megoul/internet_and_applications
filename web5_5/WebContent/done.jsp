<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.swing.JOptionPane"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String username=(String)session.getAttribute("username");
if(username == (null))
{
	//JOptionPane.showMessageDialog(null, "You are not logged in!");
	%>
	Please enter your details
	<a href="login_and_forward.jsp">here</a>
<%	
}
else
{

}
%>
</body>
</html>
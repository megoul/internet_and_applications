<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.swing.JOptionPane"%> 
<%@ page import="java.sql.*"%>
<%@ page import=" java.io.FileWriter"%>
<%@ page import=" java.io.BufferedWriter"%>
<%@ page import=" java.io.PrintWriter"%>
<%@  page   import= "javax.swing.JFrame"%>
<%@  page   import= "javax.swing.JDialog"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	
%>
<html>
<head>
<link rel=StyleSheet href="login.css" type="text/css"/>
<script src="site.js" type="text/javascript"></script>
<title>done</title>
</head>
<body>
<% 
String username=(String)session.getAttribute("username");
Integer finalprice=(Integer)session.getAttribute("finalprice");
String pc1=(String)session.getAttribute("pc1");
String pc2=(String)session.getAttribute("pc2");
String pc3=(String)session.getAttribute("pc3");
String pc4=(String)session.getAttribute("pc4");
//String pc[] = {pc1, pc2, pc3 ,pc4};

if(username == (null))
{
	final JDialog dialog = new JDialog();
	dialog.setAlwaysOnTop(true);    
	JOptionPane.showMessageDialog(dialog, "You are not logged in");
	//JFrame frame = new JFrame("JOptionPane showMessageDialog example");
	//JOptionPane.showMessageDialog(null, "You are not logged in!");
	%>
	Please enter your details
	<a href="login_and_forward.jsp">here</a>
	
<%	
}
else
{
	connection = DriverManager.getConnection(connectionURL, "root",
			"");
	statement = connection.createStatement();
	if(pc1!=null){
		String sqlInsert = "INSERT INTO mytable3 (username, id) VALUES( \"" + username  + "\" ,\"" + pc1 + "\") ;";					
		statement.executeUpdate(sqlInsert);
	}
	if(pc2!=null){
		String sqlInsert = "INSERT INTO mytable3 (username, id) VALUES( \"" + username  + "\" ,\"" + pc2 + "\") ;";
		statement.executeUpdate(sqlInsert);
		}
	if(pc3!=null){
		String sqlInsert = "INSERT INTO mytable3 (username, id) VALUES( \"" + username  + "\" ,\"" + pc3 + "\") ;";
		statement.executeUpdate(sqlInsert);
		}
	if(pc4!=null){
		String sqlInsert = "INSERT INTO mytable3 (username, id) VALUES( \"" + username  + "\" ,\"" + pc4 + "\") ;";
		statement.executeUpdate(sqlInsert);
		}

		%> Products are added to database! <%
		
		String path = "C:/Users/DELL-ETHEL/Desktop/orders.txt";
		FileWriter fr = new FileWriter(path, true);
		BufferedWriter br = new BufferedWriter(fr);
		PrintWriter pr = new PrintWriter(br);
		if(pc1!=null)
		{
		pr.print("Username: ");
		pr.print(username);
		pr.print(" ID: ");
		pr.println(pc1);
		} 
		if(pc2!=null)
		{
		pr.print("Username: ");
		pr.print(username);
		pr.print(" ID: ");
		pr.println(pc2);
		} 
		if(pc3!=null)
		{
		pr.print("Username: ");
		pr.print(username);
		pr.print(" ID: ");
		pr.println(pc3);
		} 
		if(pc4!=null)
		{
		pr.print("Username: ");
		pr.print(username);
		pr.print(" ID: ");
		pr.println(pc4);
		} 
		pr.close();
		br.close();
		fr.close();
		
		%> Products are added to server! <%
		%> You can return to <a href="homepage.jsp">myhomepage</a> <%
	
}
%>
</body>
</html>
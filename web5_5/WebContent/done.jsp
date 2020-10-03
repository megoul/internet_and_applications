<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@page import="javax.swing.JOptionPane"%> 
<%@ page import="java.sql.*"%>
<%
	String connectionURL = "jdbc:mysql://localhost:3306/mydatabase";
	Connection connection = null;
	Statement statement = null;	
	
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
		
	//	String path = "C:/Users/DELL-ETHEL/Desktop/orders.txt";
	//	FileWriter fr = new FileWriter(path, true);
	//	BufferedWriter br = new BufferedWriter(fr);
	//	PrintWriter pr = newPrintWriter(br);
	//	pr.print("Username:");
	//	pr.print(username);
	//	pr.print("ID:");
	//	pr.println(pc1);
	//	pr.close();
	//	br.close();
	//	fr.close();
		
	
}
%>
</body>
</html>
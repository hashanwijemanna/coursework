<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import= "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Orders: FashionHouse</title>
</head>
<body>
<center><u><font color=balck size=15>ADMIN: FashionHouse<br>Messages</font></u></center><br><br><br>
<center>
<table border="1">
<tr>
<th> id </th>
<th> name </th>
<th> email </th>
<th> message </th>
</tr>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursework","root","hashan123");
	Statement st1=con.createStatement();
	
	String str1 ="select * from messages";
	ResultSet rs = st1.executeQuery(str1);
	while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt("id") %></td>
	<td><%=rs.getString("name") %></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("message") %></td>
	
	</tr>
	<%
	}
	
}catch(Exception e){
	
}
%>
</table>
</center>
</body>
</html>
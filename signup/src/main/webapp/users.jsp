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
<title>Users: FashionHouse</title>
</head>
<body>
<center><u><font color=balck size=15>ADMIN: FashionHouse</font></u></center><br><br><br>
<center>
<table border="1">
<tr>
<th> id </th>
<th> uname </th>
<th> uemail </th>
<th> upwd </th>
<th> umobile </th>
</tr>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursework","root","hashan123");
	Statement st=con.createStatement();
	
	String str ="select * from users";
	ResultSet rs = st.executeQuery(str);
	while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt("id") %></td>
	<td><%=rs.getString("uname") %></td>
	<td><%=rs.getString("uemail") %></td>
	<td><%=rs.getString("upwd") %></td>
	<td><%=rs.getString("umobile") %></td>
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
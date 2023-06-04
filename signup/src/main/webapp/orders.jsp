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
<center><u><font color=balck size=15>ADMIN: FashionHouse<br>Orders</font></u></center><br><br><br>
<center>
<table border="1">
<tr>
<th> id </th>
<th> product_id </th>
<th> full_name </th>
<th> email </th>
<th> address </th>
<th> city </th>
<th> state </th>
<th> zip </th>
<th> name on card </th>
<th> card number </th>
<th> exp month </th>
<th> exp year </th>
<th> cvv </th>
<th> quantity </th>
<th> size </th>
</tr>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coursework","root","hashan123");
	Statement st1=con.createStatement();
	
	String str1 ="select * from orders";
	ResultSet rs = st1.executeQuery(str1);
	while(rs.next()){
	%>
	<tr>
	<td><%=rs.getInt("id") %></td>
	<td><%=rs.getString("product_id") %></td>
	<td><%=rs.getString("full_name") %></td>
	<td><%=rs.getString("email") %></td>
	<td><%=rs.getString("address") %></td>
	<td><%=rs.getString("city") %></td>
	<td><%=rs.getString("State") %></td>
	<td><%=rs.getString("zip") %></td>
	<td><%=rs.getString("name_on_crd") %></td>
	<td><%=rs.getString("crd_num") %></td>
	<td><%=rs.getString("exp_month") %></td>
	<td><%=rs.getString("exp_year") %></td>
	<td><%=rs.getString("cvv") %></td>
	<td><%=rs.getString("quantity") %></td>
	<td><%=rs.getString("size") %></td>
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
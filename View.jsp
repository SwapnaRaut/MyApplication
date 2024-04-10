
    
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pojo.*" import="java.util.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body bgcolor="yellow" >
<div style="border:solid 2px hotpink; background:purple; padding:15px;">
<center>

<%
out.print("<div style='border:solid 2px hotpink; background:purple; padding:15px;'>");
out.println("<a href='Index.jsp' style='color:hotpink;'>Add New Employee</a>");
out.println("<h1 style='color:hotpink;' > Employee List</h1>");
out.print("</div>");
List <pojoC> li=AllDbF.getAllEmp();

out.print("<div style='border:solid 2px hotpink; background:purple; padding:15px;'>");

out.print("<table border='2' width='100%' style='color:hotpink; padding:20px; border:solid 2px hotpink;'>");
out.print("<tr><th>ID</th><th>NAME</th><th>PASSWARD</th><th>EMAIL</th><th>COUNTRY</th><th>UPDATE</th><th>DELETE</th></tr>");
	
for(pojoC p:li)
{

	out.print("<tr >");
	out.print("<td style='padding:10px;'>"+p.getId() +"</td>");
	out.print("<td>"+p.getName() +"</td>");
	out.print("<td>"+p.getPassward() +"</td>");
	out.print("<td>"+p.getEmail() +"</td>");
	out.print("<td>"+p.getCountry() +"</td>");
	out.print("<td>"+"<a href='Edit.jsp?id="+p.getId()+"' style='color:hotpink;'>Edit</a>"+"</td>");
	out.print("<td>"+"<a href='Delete.jsp?id="+p.getId()+"' style='color:hotpink;'>Delete</a>"+"</td>");
	out.print("</tr>");
}

out.print("</table>");
out.print("</div>");

%>
</center>
</div>
</body>
</html>
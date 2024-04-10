<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pojo.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="yellow">
<div style="border:solid 2px hotpink; background:purple; padding:15px;">
<center>
<%
out.print("<div style='border:solid 2px hotpink; background:purple; padding:15px;'>");
out.println("<h1 style='color:hotpink'>Update Employee</h1>");
out.print("</div>");
String id=request.getParameter("id");


pojoC p=AllDbF.getEmpById(id);
out.print("<div style='border:solid 2px hotpink; background:purple; padding:15px; color:hotpink;'>");
out.println("<h1>");
out.println("<form action='Edit2.jsp' method='post'>");
out.println("<table>");
out.println("<tr><td></td><td><input type='hidden' name='id' value="+p.getId()+"></td></tr>");
out.println("<tr><td>Name:-</td><td><input type='text' name='name' value="+p.getName()+"></td></tr>");
out.println("<tr><td>Passward:-</td><td><input type='passward' name='passward' value="+p.getPassward()+"></td></tr>");
out.println("<tr><td>Email:-</td><td><input type='text' name='email' value="+p.getEmail()+"></td></tr>");
out.println("<tr><td>Countary:-</td><td><select  name='country'  value="+p.getCountry()+" style ='width=150px;'><option>India</option><option>UK</option><option>USA</option><option>Other</option></select></td></tr>");
out.println("<br><tr><td colspan='2'><input type='submit'  value='Edit&Save' style='margin-left:90px;'></td></tr>");
out.println("</table>");
out.println("</form>");
out.println("</h1>");
out.print("</div>");

%>
</div>
</center>
</body>
</html>
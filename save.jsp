<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="pojo.AllDbF" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String passward=request.getParameter("passward");
String email=request.getParameter("email");
String country=request.getParameter("country");

%>

<jsp:useBean id="p" class="pojo.pojoC"></jsp:useBean>
<jsp:setProperty property="id" name="p" value="<%= id %>"/>
<jsp:setProperty property="name" name="p" value="<%= name %>"/>
<jsp:setProperty property="passward" name="p" value="<%= passward %>"/>
<jsp:setProperty property="email" name="p" value="<%= email %>"/>
<jsp:setProperty property="country" name="p" value="<%= country %>"/>

<%
int status = AllDbF.save1(p);

if(status>0)
{
	out.print("<p>Record save Sucessfully</p>");
	RequestDispatcher rd=request.getRequestDispatcher("Index.jsp");
	rd.include(request, response);
}
else
{
out.println("Sorry! unable to save record");
}
%>

</body>
</html>
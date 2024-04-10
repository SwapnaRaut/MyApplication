<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>

<body bgcolor="yellow">

<div style="border:solid 2px hotpink; background:purple; padding:15px;">

<center>

<div style="border:solid 2px hotpink; background:purple; opacity:.7;padding:15px;">
<h1 style="color:hotpink;">***   Add New Employee   ***</h1>
</div>


<div style="border:solid 2px hotpink;  background:purple;opacity:.7; padding:20px;">
<form action="save.jsp" method="post">
<table  style=" color:hotpink; font-size:20px;">
<tr >
<td style='padding:15px;'>Id:</td><td><input type="number" name="id"></td>
</tr>
<tr>
<td style='padding:15px;' >Name:</td><td><input type="text" name="name"></td>
</tr>
<tr>
<td style='padding:15px;'>Passward:</td><td><input type="password" name="passward"></td>
</tr>
<tr style='padding:15px;'>
<td style='padding:15px;'>Email:</td><td><input type="email" name="email"></td>
</tr>
<tr>
<td style='padding:15px;'>Country:</td><td><select  name="country" style="width:150px;">
					<option>India</option>
					<option>USA</option>
					<option>UK</option>
					<option>Other</option>
					</select>

</td>
</tr>
<tr>
<td colspan="3" style='padding:15px;'><input type="submit" value="Save EMP" style='margin-left:70px;'></td>
</tr>
</table>

</form>
<br>
<a href="View.jsp" style="color:hotpink;">View Details</a>
</div>
</center>
</div>
</body>
</html>
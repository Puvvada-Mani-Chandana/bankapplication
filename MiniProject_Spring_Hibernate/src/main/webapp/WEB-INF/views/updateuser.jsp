<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update book</title>
<style type="text/css">
 input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: pink;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=password], select {
  width: 100%;
  background-color: pink;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color:yellow;
}

div {
  border-radius: 5px;
  background-color: orange;
  padding: 20px;
}
.error{
	color:red;
	font-style: italic;
}


 h1{

color:orange;
}
</style>

</head>
<body>
<marquee><i><h1>Welcome, Customer HCL BANK APPLICATION</h1></i></marquee>
<center>
<form:form action="adduser" method="post" modelAttribute="user">
	<form:hidden path="uid"/>
	<table>
		<tr>
			<td>Enter username:</td>
			<td><form:input path="username" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter password:</td>
			<td><form:input path="password" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter userType:</td>
			<td><form:input path="userType"/> </td>
		</tr>
		<tr>
			<td>Enter address:</td>
			<td><form:input path="address" /></td>
		</tr>
		<tr>
			<td>Enter phone:</td>
			<td><form:input path="phone"/></td>
		</tr>
		<tr>
			<td>Enter email:</td>
			<td><form:input path="email"/></td>
		</tr>
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
</form:form>
</center>
</body>
</html>
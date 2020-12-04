<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HCL Internal Bank</title>
<style>
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
<form:form action="transfer" method="post" modelAttribute="transferBean">
<table>
	<tr>
		<td>Enter from account</td>
		<td><form:input path="fromAccountId"/><form:errors path="fromAccountId" class="error"/></td>
	</tr>
	
	<tr>
		<td>Enter to account</td>
		<td><form:input path="toAccountId"/><form:errors path="toAccountId" class="error"/></td>
	</tr>
	
	<tr>
		<td>Enter amount</td>
		<td><form:input path="amount"/><form:errors path="amount" class="error"/></td>
	</tr>
	<tr>
		<td><input type="submit"></td>
	</tr>
	
</table>

</form:form>
</center>
</body>
</html>
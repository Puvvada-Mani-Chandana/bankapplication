<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transfer</title>
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
<h1>WITHDRAW FORM</h1>
	<form:form action="withdraw" method="post" modelAttribute="withdrawBean">
		<table>
			
			<tr>
				<td>Enter account number:</td>
				<td><form:input path="accountId"/><form:errors path="accountId" class="error"></form:errors></td>
			</tr>
			
			<tr>
				<td>Enter amount to be transferred:</td>
				<td><form:input path="amount"/><form:errors path="amount" class="error"></form:errors></td>
			</tr>
			
			<tr>
				<td><input type="submit" value="transfer amount"></td>
			</tr>
			
		
		</table>
	
	</form:form>
</center>
</body>
</html>
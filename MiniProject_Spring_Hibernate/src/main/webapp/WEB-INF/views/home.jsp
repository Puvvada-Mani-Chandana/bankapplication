<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
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

h1,h3{

color:orange;
}

</style>

</head>
<body>
<marquee><i><h1>Welcome, Customer HCL BANK APPLICATION</h1></i></marquee>
<center>
<h3>Welcome, ${sessionScope.user.userType}</h3>  <br>
<c:if test="${sessionScope.user.userType == 'ADMIN'}">
	<a href="showallusers"> Show All Users </a> <br>
	<a href="showallaccounts"> Show All Accounts </a> <br>
	<a href="adduser"> Add User </a> <br>
	<a href="addaccount"> Add Account </a> <br>
	<a href="login"> Logout </a>
	
</c:if>

<c:if test="${sessionScope.user.userType == 'MANAGER'}">
	<a href="showallaccounts"> Show All Accounts </a> <br>
	<a href="transfer"> Transfer </a> <br>
	<a href="withdraw"> Withdraw </a> <br>
	<a href="deposit"> Deposit </a> <br>
	<a href="login"> Logout </a>
</c:if>

<c:if test="${sessionScope.user.userType == 'CLERK'}">
	<a href="showalltransactions"> Show All Transactions </a> <br>
	<a href="login"> Logout </a>
</c:if>
</center>
</body>
</html>

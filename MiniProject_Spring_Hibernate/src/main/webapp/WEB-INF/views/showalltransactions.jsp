<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Transactions</title>

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


table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
td, th {
  border: 1px solid green;
  text-align: left;
  padding: 8px;
}
tr:nth-child(even) {
  background-color: green;
h1{

color:orange;
}
</style>
</head>
<body>
<marquee><i><h1>Welcome, Customer HCL BANK APPLICATION</h1></i></marquee>
<center>
<table>
    <thead>
        <tr>
            <th>id</th>
            <th>transactionInfo</th>
            <th>date</th>
            <th>amount</th>
            <th>transactionType</th>
            
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${transactions}" var="transaction">
            <tr>
                <td>${transaction.txId}</td>
                <td>${transaction.txInfo}</td>
                <td><fmt:formatDate  pattern="dd/MM/yyyy" value="${transaction.timestamp}"/></td>
                <td>${transaction.amount}</td>
                 <td>${transaction.txType}</td> 
                              
            </tr>
        </c:forEach>
    </tbody>
</table>
</center>
</body>
</html>

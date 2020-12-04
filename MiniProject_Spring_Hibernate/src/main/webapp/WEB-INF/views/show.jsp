<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show</title>
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
color:blue;
font-weight:bold;
}
a:link {
  color: red;
}

a:visited {
  color: green;
}

a:hover {
  color: hotpink;
}

a:active {
  color: blue;
}
a{
text-decoration:none;
}

</style>
</head>
<body>
<marquee><i><h1>Welcome, Customer HCL BANK APPLICATION</h1></i></marquee>
<center>

<h1>BANK APPLICATION</h1>
    

<a href="${​​​​​​​​pageContext.request.contextPath}​​​​​​​​/login">Login</a>



<a href="${​​​​​​​​pageContext.request.contextPath}​​​​​​​​/signup">Signup</a>
</center>
</body>
</html>
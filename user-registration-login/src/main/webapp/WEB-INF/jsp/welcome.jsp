<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WELCOME</title>
    <style><%@include file="/WEB-INF/css/style_home.css"%></style>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
      integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
      crossorigin="anonymous"
    />
</head>
<body class=login_box >
  </br> 
<h3 style="color:white">Welcome ${userid}</h3>
</br  align="center">
<p style="color:white">I know your password : ${password}</p>
</br align="center">
<p style="color:white">From sql : ${sqlop}</p>
  


    <table align="center">
      <tr>
        <td><p style="color:white">Username</p></td>
        <td><p style="color:white">${sqlop}</p></td>
        <td><form:errors path="username" /></td>
      </tr>
      
      <tr></tr>
      <tr>
        <td></td>
        <td><a href="/">Home</a></td>
      </tr>
    </table>
  
  
</body>
</html>
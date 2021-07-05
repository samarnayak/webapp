
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <style><%@include file="/WEB-INF/css/style_home.css"%></style>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
      integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
      crossorigin="anonymous"
    />
</head>
<body class="login_box">
  <h3 style="color: white;padding: 10px 20px;
  height: 100%;
  width: 100%;">Enter Details</h3>
    <body>
      <form:form id="regForm" modelAttribute="user" action="registrationProcess" method="POST">

        

        <!--<form modelAttribute="user" action="registrationProcess" method="POST">-->
        
          <table align="center">
          <tr>
         <font color="white"> <p>${errormessage}</p></font>
          </tr>
      <tr>
        <td><form:label class="login-item" path="username">Username</form:label></td>
        <td><form:input class="login-item" path="username" name="username" id="username" required="true" /></td>
        <td><form:errors path="username" /></td>
      </tr>
      <tr>
        <td><form:label class="login-item" path="password">Password</form:label></td>
        <td><form:password class="login-item" path="password" name="password" id="password" /></td>
        <td><form:errors path="password" /></td>
      </tr>
      <tr>
        <td><form:label class="login-item"  path="firstname">FirstName</form:label></td>
        <td><form:input class="login-item" path="firstname" name="firstname" id="firstname" /></td>
      </tr>
      <tr>
        <td><form:label class="login-item"  path="lastname">LastName</form:label></td>
        <td><form:input class="login-item" path="lastname" name="lastname" id="lastname" /></td>
      </tr>
      <tr>
        <td><form:label class="login-item" path="email">Email</form:label></td>
        <td><form:input class="login-item" path="email" name="email" id="email" /></td>
      </tr>
      <tr>
        <td><form:label class="login-item" path="address">Address</form:label></td>
        <td><form:input class="login-item" path="address" name="address" id="address" /></td>
      </tr>
      <tr>
        <td><form:label class="login-item" path="phone">Phone</form:label></td>
        <td><form:input class="login-item" path="phone" name="phone" id="phone" /></td>
      </tr>

      <tr>
        <td></td>
        <td><form:button id="register" class="login-btn" name="register">Register</form:button></td>
      </tr>
      <tr></tr>
      <tr>
        <td></td>
        <td><a href="/">Home</a></td>
      </tr>
    </table>
        </form:form>
      
      </body>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>Welcome ${userid}
</br>
I know your password : ${password}
</br>
From sql : ${sqlop}
  


    <table align="center">
      <tr>
        <td>Username</td>
        <td>${sqlop}</td>
        <td><form:errors path="username" /></td>
      </tr>
      <tr>
        <td><form:label path="password">Password</form:label></td>
        <td><form:password path="password" name="password" id="password" /></td>
        <td><form:errors path="password" /></td>
      </tr>
      <tr>
        <td><form:label path="firstname">FirstName</form:label></td>
        <td><form:input path="firstname" name="firstname" id="firstname" /></td>
      </tr>
      <tr>
        <td><form:label path="lastname">LastName</form:label></td>
        <td><form:input path="lastname" name="lastname" id="lastname" /></td>
      </tr>
      <tr>
        <td><form:label path="email">Email</form:label></td>
        <td><form:input path="email" name="email" id="email" /></td>
      </tr>
      <tr>
        <td><form:label path="address">Address</form:label></td>
        <td><form:input path="address" name="address" id="address" /></td>
      </tr>
      <tr>
        <td><form:label path="phone">Phone</form:label></td>
        <td><form:input path="phone" name="phone" id="phone" /></td>
      </tr>

      </tr>
      <tr></tr>
      <tr>
        <td></td>
        <td><a href="/">Home</a></td>
      </tr>
    </table>
  
  
</body>
</html>
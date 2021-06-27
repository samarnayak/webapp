<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LogIn</title>
    <style><%@include file="/WEB-INF/css/style_home.css"%></style>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
      integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc"
      crossorigin="anonymous"
    />
</head>
<body class="login_box">
    

    <div >
        <form:form method="post" id="loginForm" modelAttribute="login" action="loginProcess" >
            <table>
                <tr>
                    <td>
                    <input type="radio" id="html" name="fav_language" value="HTML">
                    <label for="html" style="color:white ;  font-size: 1.4rem;
                    margin-bottom: 24px;
                    height:40px;
                    color: seashell;">Admin</label>
                    <input type="radio" id="css" name="fav_language" value="CSS">
                    <label for="css" style="color:white ; font-size: 1.4rem;
                    margin-bottom: 24px;
                    height:40px;
                    color: seashell;">User</label><br>
                    </td>
                </tr>
                    <tr></tr>
                    <td>
                       <h4> <label for="username" class="login-item" >Username</label>
                        <!-- <input type="text" name="" placeholder="Username/User id" class="login-item" > -->
                        <form:input path="username" name="username" id="username" placeholder="Username/User id" class="login-item" />
                    </h4>
                    </td>
                </tr>
                <tr></tr>
                
                <tr></tr>
                <tr>
                    
                    <td>
                        <h4>
                            <label for="pass" class="login-item"  >Password  </label>
                            
                            <!-- <input type="text" name="" placeholder="Password" class="login-item"> -->
                            <form:password path="password" name="password" id="password" class="login-item" />
                        </h4>
                    </td>
                </tr>
            </table>
            <div>
                <!-- <button type="submit" class="login-btn">Signin</button> -->
                <form:button id="login" name="login" class="login-btn">Signin</form:button>
            </div>
        </form:form>
    </div>
    <a href="#"  style="padding: 10px 20px; height: 100%;
    width: 100%;">Forgot Password</a>
    <div class="login-item">
        <a href="/" >HOME</a>
    </div>
</body>
</html>
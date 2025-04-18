<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>LOGIN</title>
<link rel="icon" href="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous">

<style>
    body {
        margin: 0;
        padding: 0;
        background: linear-gradient(to right, #d4e0ff, #4d5dfb);

    }

    .login-box {
        background-color: white;
        border-radius: 10px;
        padding: 30px;
        width: 350px;
        margin: 150px auto;
        box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
        text-align: center;
    }

    .login-box h2 {
        font-weight: bold;
        color: #007bff;
        text-decoration: underline;
        margin-bottom: 25px;
    }

    .form-control {
        margin-bottom: 15px;
        font-size: 14px;
    }

    .btn-login {
        width: 100%;
        border-radius: 3px;
        font-weight: bold;
    }

    .signup-text {
        margin-top: 15px;
        font-size: 14px;
    }

    .signup-text a {
        color: #007bff;
        text-decoration: none;
    }

    .signup-text a:hover {
        text-decoration: underline;
    }
</style>

<script>
    function validateLoginForm() {
        const uname = document.forms["loginForm"]["uname"].value.trim();
        const pass = document.forms["loginForm"]["pass"].value.trim();

        if (uname === "") {
            alert("Username is required.");
            return false;
        }

        if (pass === "") {
            alert("Password is required.");
            return false;
        }

        if (pass.length < 5) {
            alert("Password must be at least 5 characters.");
            return false;
        }

        return true;
    }
</script>

</head>
<body>

<div class="login-box">
    <h2>LOGIN</h2>
    <form name="loginForm" action="LoginServe" method="post" onsubmit="return validateLoginForm();">
        <label>USERNAME</label>
        <input type="text" class="form-control" placeholder="ENTER YOUR USERNAME" name="uname">

        <label>PASSWORD</label>
        <input type="password" class="form-control" placeholder="ENTER YOUR PASSWORD" name="pass">

        <input type="submit" class="btn btn-outline-dark btn-login" value="LOGIN">
    </form>
    <div class="signup-text">
        Don't have an account? <a href="Register.jsp">Sign up</a>
    </div>
</div>

</body>
</html>

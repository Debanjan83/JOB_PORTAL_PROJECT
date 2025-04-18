<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>REGISTER</title>
<link rel="icon" href="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
 integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
 crossorigin="anonymous">
<style>
    body {
        background: linear-gradient(to right, #dbeafe, #6366f1);f;
    }
    .register-container {
        width: 350px;
        margin: 130px auto;
        background-color: white;
        padding: 30px 25px;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(0,0,0,0.2);
    }
    .register-container h2 {
        text-align: center;
        color: #007bff;
        font-weight: bold;
        text-decoration: underline;
        margin-bottom: 25px;
    }
    .form-control {
        margin-bottom: 15px;
    }
    .btn-register {
        display: block;
        margin: 0 auto;
    }
</style>
<script>
    function validateForm() {
        const uname = document.forms["registerForm"]["uname"].value.trim();
        const pass = document.forms["registerForm"]["pass"].value.trim();
        const name = document.forms["registerForm"]["nm"].value.trim();
        
        if (uname === "" || pass === "" || name === "") {
            alert("All fields are required.");
            return false;
        }
        if (uname.length < 3) {
            alert("Username must be at least 3 characters long.");
            return false;
        }
        if (pass.length < 5) {
            alert("Password must be at least 5 characters long.");
            return false;
        }
        if (!/^[a-zA-Z\s]+$/.test(name)) {
            alert("Name must contain only letters and spaces.");
            return false;
        }

        return true;
    }
</script>
</head>
<body>
    <div class="register-container">
        <form name="registerForm" action="RegisterServe" method="post" onsubmit="return validateForm();">
            <h2>SIGN UP</h2>
            <label>USERNAME</label>
            <input type="text" class="form-control" placeholder="ENTER THE USERNAME" name="uname">
            <label>PASSWORD</label>
            <input type="password" class="form-control" placeholder="ENTER THE PASSWORD" name="pass">
            <label>NAME</label>
            <input type="text" class="form-control" placeholder="ENTER YOUR NAME" name="nm">
            <input type="submit" class="btn btn-outline-dark btn-register" value="REGISTER">
        </form>
    </div>
</body>
</html>

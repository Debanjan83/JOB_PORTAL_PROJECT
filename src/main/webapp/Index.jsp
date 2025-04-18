<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Job Portal</title>
<link rel="icon" href="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
	body {
        overflow-x: hidden;
        overflow-y: hidden;
    }
    .header {
        background-color: #007bff;
        padding: 10px 20px;
        color: white;
        display: flex;
        align-items: center;
    }
    .header img {
        height: 40px;
        margin-right: 10px;
    }
    .header a {
        color: white;
        margin-left: auto;
        margin-right: 20px;
        text-decoration: none;
        font-weight: bold;
    }
    .header a:hover {
        text-decoration: underline;
    }
    .main-content {
        position: relative;
        text-align: center;
        color: white;
    }
    .main-content img {
        width: 80%;
        height: 29em;
        opacity: 0.7;
    }
    .main-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: rgba(0, 0, 0, 0.7);
        padding: 30px;
        border-radius: 10px;
    }
    .main-text h1 {
        font-size: 40px;
        font-weight: bold;
    }
    .main-text p {
        font-size: 18px;
    }
    .main-text .btn {
        margin: 10px;
    }
    .features {
    	display: flex;
        text-align: center;
        margin-top: 12px;
        margin-bottom: 15px;
    }
    .features h5 {
        color: #007bff;
        font-weight: bold;
    }
</style>
</head>
<body>

<div class="header">
    <img src="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Logo">
    <h4 style="margin: 0;">JOB PORTAL</h4>
    <div style="margin-left: auto;">
        <a href="Index.jsp">HOME</a>
        <a href="#">ABOUT</a>
        <a href="Login.jsp">LOGIN</a>
        <a href="Register.jsp">REGISTER</a>
    </div>
</div>

<div class="main-content">
    <img src="https://th.bing.com/th/id/OIP.Zlw3FnH_nJVNl59K9fvKxwHaD-?w=321&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
         alt="Job Portal Banner">
    <div class="main-text">
        <h1>Find Your Dream Job</h1>
        <p>Connect with top employers and land your dream job effortlessly.</p>
        <a href="Register.jsp" class="btn btn-primary">REGISTER</a>
        <a href="Login.jsp" class="btn btn-primary">LOGIN</a>
    </div>
</div>

<div class="features">
    <div class="col-md-4">
        <h5>Browse Jobs</h5>
        <p>Explore thousands of job listings from top companies.</p>
    </div>
    <div class="col-md-4">
        <h5>Easy Application</h5>
        <p>Apply to multiple jobs with just one click.</p>
    </div>
    <div class="col-md-4">
        <h5>Get Noticed</h5>
        <p>Stand out to employers with a comprehensive profile.</p>
    </div>
</div>

<footer style="text-align:center; margin-top: 47px; padding-bottom: 10px; padding-top: 10px; background-color: #343638; color: white;">
    &copy; 2024 Job Portal. All rights reserved.
</footer>

</body>
</html>

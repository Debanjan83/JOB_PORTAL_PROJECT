<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ERROR</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
          crossorigin="anonymous">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #d0d9f2, #5a67f2);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .error-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 400px;
        }

        .error-container img {
            width: 120px;
            height: 120px;
            margin-bottom: 20px;
        }

        .error-container h2,
        .error-container h3 {
            color: #dc3545;
            font-weight: bold;
        }

        .error-container h2 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .error-container h3 {
            font-size: 18px;
        }

        .back-btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmWru8q17zpOzzzT1s475ZS_8fOL1GS0teSw&s" alt="Error">
        <h2>ALERT!</h2>
        <h3>YOUR USERNAME IS WRONG!!!</h3>
        <div class="back-btn">
            <a href="login.jsp" class="btn btn-outline-danger">Go Back</a>
        </div>
    </div>
</body>
</html>

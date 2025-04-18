<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Apply</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
          crossorigin="anonymous">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #d0d9f2, #5a67f2);
        }

        .form-container {
            width: 30%;
            margin: 100px auto;
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .form-container h2 {
            text-align: center;
            font-weight: bold;
            color: #007bff;
            text-decoration: underline;
            margin-bottom: 25px;
        }

        .form-control {
            margin-bottom: 15px;
        }

        .btn-submit {
            display: block;
            margin: 0 auto;
        }
    </style>
    <script type="text/javascript">
        function validateForm() {
            var uname = document.forms["jobForm"]["uname"].value;
            var jid = document.forms["jobForm"]["jid"].value;
            var date = document.forms["jobForm"]["date"].value;

            if (uname === "") {
                alert("Username must be filled out");
                return false;
            }
            if (jid === "") {
                alert("Job ID must be filled out");
                return false;
            }
            if (date === "") {
                alert("Apply Date must be selected");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="form-container">
        <form name="jobForm" action="ApplicationServe" method="post" onsubmit="return validateForm()">
            <h2>JOB APPLY</h2>
            <% 
                HttpSession sn = request.getSession();
                String sessionUname = (String) sn.getAttribute("loginUname");
            %>
            <input type="text" class="form-control" name="uname" value="<%= sessionUname %>" readonly>
            <input type="text" class="form-control" name="jid" placeholder="Enter the Job ID">
            <input type="date" class="form-control" name="date">
            <input type="submit" class="btn btn-outline-dark btn-submit" value="Apply">
        </form>
    </div>
</body>
</html>

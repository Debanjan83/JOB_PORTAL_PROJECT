<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Application</title>
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
            margin: 150px auto;
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
            margin-bottom: 20px;
        }

        .btn-submit {
            display: block;
            margin: 0 auto;
        }
    </style>
    <script type="text/javascript">
        function validateSearchForm() {
            var uname = document.forms["searchForm"]["uname"].value;
            if (uname === "") {
                alert("Please enter your username.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="form-container">
        <form name="searchForm" action="ApplicationSearchServe" method="post" onsubmit="return validateSearchForm()">
            <h2>SEARCH APPLICATION</h2>
            <%
                HttpSession sn = request.getSession();
                String sessionUname = (String) sn.getAttribute("loginUname");
            %>
            <input type="text" class="form-control" value="<%= sessionUname %>" name="uname" readonly>
            <input type="submit" class="btn btn-outline-secondary btn-submit" value="Search">
        </form>
    </div>
</body>
</html>

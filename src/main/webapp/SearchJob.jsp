<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Job</title>
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
            width: 35%;
            margin: 130px auto;
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

        .form-control,
        .custom-select {
            margin-bottom: 20px;
        }

        .btn-submit {
            display: block;
            margin: 0 auto;
        }
    </style>
    <script type="text/javascript">
        function validateSearchJobForm() {
            var domain = document.forms["searchJobForm"]["jdomain"].value;

            if (domain === "") {
                alert("Please select a job domain.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div class="form-container">
        <form name="searchJobForm" action="SearchServe" method="post" onsubmit="return validateSearchJobForm()">
            <h2>SEARCH JOB</h2>
            <select name="jdomain" id="jdomain" class="custom-select">
                <option value="">-- Select Job Domain --</option>
                <option value="JUNIOR ENGINEER">JUNIOR ENGINEER</option>
                <option value="SENIOR ENGINEER">SENIOR ENGINEER</option>
                <option value="SENIOR DEVELOPER">SENIOR DEVELOPER</option>
                <option value="FULL STACK DEVELOPER">FULL STACK DEVELOPER</option>
                <option value="DATA ENTRY OPERATOR">DATA ENTRY OPERATOR</option>
                <option value="ANALYST">ANALYST</option>
                <option value="PROJECT MANAGER">PROJECT MANAGER</option>
                <option value="CUSTOMER SUPPORT">CUSTOMER SUPPORT</option>
            </select>
            <input type="submit" class="btn btn-outline-secondary btn-submit" value="Search">
        </form>
    </div>
</body>
</html>

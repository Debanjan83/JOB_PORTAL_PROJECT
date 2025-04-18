<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
<title>ADD JOB</title>
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

    .job-form-container {
        width: 30%;
        margin: 170px auto;
        background-color: white;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    .job-form-container h2 {
        text-align: center;
        font-weight: bold;
        color: #007bff;
        text-decoration: underline;
        margin-bottom: 25px;
    }

    .form-control {
        margin-bottom: 15px;
    }

    .btn-center {
        display: flex;
        justify-content: center;
    }

    .btn-center input {
        width: 100px;
    }
</style>
<script type="text/javascript">
    function validateJobForm() {
        var jid = document.forms["jobForm"]["jid"].value;
        if (jid == "") {
            alert("Please enter the Job ID.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div class="job-form-container">
        <form name="jobForm" action="JobDelServe" method="post" onsubmit="return validateJobForm()">
            <h2>DELETE JOB</h2>
            <input type="text" class="form-control" placeholder="ENTER THE JOB ID" name="jid">
            <div class="btn-center">
                <input type="submit" class="btn btn-outline-secondary" value="DELETE">
            </div>
        </form>
    </div>
</body>
</html>

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
        margin: 65px auto;
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
        var jnm = document.forms["jobForm"]["jnm"].value;
        var jtype = document.forms["jobForm"]["jtype"].value;
        var jdomain = document.forms["jobForm"]["jdomain"].value;
        var jdate = document.forms["jobForm"]["jdate"].value;
        var jyrsexp = document.forms["jobForm"]["jyrsexp"].value;
        var cid = document.forms["jobForm"]["cid"].value;

        if (jid == "") {
            alert("Please enter the Job ID.");
            return false;
        }
        else if (!/^\d+$/.test(jid)) {
            alert("Job ID must be numeric.");
            return false;
        }
        else if (jnm == "") {
            alert("Please enter the Job Name.");
            return false;
        }
        else if (jtype == "") {
            alert("Please select the Job Type.");
            return false;
        }
        else if (jdomain == "") {
            alert("Please select the Domain.");
            return false;
        }
        else if (jdate == "") {
            alert("Please select the Valid Upto date.");
            return false;
        }
        else if (jyrsexp == "") {
            alert("Please select the Years of Experience.");
            return false;
        }
        else if (cid == "") {
            alert("Please enter the Company ID.");
            return false;
        }
        return true;
    }
</script>
</head>
<body>
    <div class="job-form-container">
        <form name="jobForm" action="JobServe" method="post" onsubmit="return validateJobForm()">
            <h2>ADD JOB</h2>
            <input type="text" class="form-control" placeholder="ENTER THE JOB ID" name="jid">
            <input type="text" class="form-control" placeholder="ENTER THE JOB NAME" name="jnm">
            <select name="jtype" class="custom-select">
                <option value="">Select Job Type</option>
                <option value="EXECUTIVE">EXECUTIVE</option>
                <option value="ANALYST">ANALYST</option>
                <option value="MANAGER">MANAGER</option>
                <option value="CLERK">CLERK</option> 
            </select>
            <select name="jdomain" class="custom-select">
                <option value="">Select Domain</option>
                <option value="JUNIOR ENGINEER">JUNIOR ENGINEER</option>
                <option value="SENIOR ENGINEER">SENIOR ENGINEER</option>
                <option value="SENIOR DEVELOPER">SENIOR DEVELOPER</option>
                <option value="FULL STACK DEVELOPER">FULL STACK DEVELOPER</option>
                <option value="DATA ENTRY OPERATOR">DATA ENTRY OPERATOR</option>
                <option value="ANALYST">ANALYST</option>
                <option value="PROJECT MANAGER">PROJECT MANAGER</option>
                <option value="CUSTOMER SUPPORT">CUSTOMER SUPPORT</option>
            </select>
            <input type="date" class="form-control" name="jdate">
            <select name="jyrsexp" class="custom-select">
                <option value="">Select Experience</option>
                <option value="FRESHER">FRESHER</option>
                <option value="UPTO 2 YEARS">UPTO 2 YEARS</option>
                <option value="UPTO 5 YEARS">UPTO 5 YEARS</option>
                <option value="UPTO 10 YEARS">UPTO 10 YEARS</option>
                <option value="MORE THAN 10 YEARS">MORE THAN 10 YEARS</option>
            </select>
            <input type="text" class="form-control" placeholder="ENTER COMPANY ID" name="cid">
            <br>
            <div class="btn-center">
                <input type="submit" class="btn btn-outline-secondary" value="SAVE">
            </div>
        </form>
    </div>
</body>
</html>

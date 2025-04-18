<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADD COMPANY</title>
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

    .company-form-container {
        width: 30%;
        margin: 90px auto;
        background-color: white;
        padding: 20px 30px;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
    }

    .company-form-container h2 {
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
    function validateCompanyForm() {
        var cid = document.forms["companyForm"]["cid"].value;
        var cname = document.forms["companyForm"]["cname"].value;
        var cphno = document.forms["companyForm"]["cphno"].value;
        var cemail = document.forms["companyForm"]["cemail"].value;
        var cadd = document.forms["companyForm"]["cadd"].value;
        var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        var phonePattern = /^[0-9]{10}$/;

        if (cid === "") {
            alert("Please enter the Company ID.");
            return false;
        }
        if (cname === "") {
            alert("Please enter the Company Name.");
            return false;
        }
        if (cphno === "" || !phonePattern.test(cphno)) {
            alert("Please enter a valid 10-digit Phone Number.");
            return false;
        }
        if (cemail === "" || !emailPattern.test(cemail)) {
            alert("Please enter a valid Email ID.");
            return false;
        }
        if (cadd === "") {
            alert("Please enter the Company Address.");
            return false;
        }
        return true;
    }
</script>
</head>

<body>
    <div class="company-form-container">
        <form name="companyForm" action="CompanyServe" method="post" onsubmit="return validateCompanyForm()">
            <h2>ADD COMPANY</h2>
            <input type="text" class="form-control" placeholder="ENTER THE COMPANY ID" name="cid">
            <input type="text" class="form-control" placeholder="ENTER THE COMPANY NAME" name="cname">
            <input type="text" class="form-control" placeholder="ENTER PHONE NUMBER" name="cphno">
            <input type="text" class="form-control" placeholder="ENTER EMAIL-ID" name="cemail">
            <input type="text" class="form-control" placeholder="ENTER THE ADDRESS" name="cadd">
            <div class="btn-center">
                <input type="submit" class="btn btn-outline-dark" value="SAVE">
            </div>
        </form>
    </div>
</body>
</html>

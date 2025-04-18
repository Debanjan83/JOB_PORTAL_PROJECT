<%@page import="master.dto.JobDto"%>
<%@page import="master.dao.JobDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="master.dao.ApplicationDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="Nav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LISTED JOBS</title>
    <link rel="icon" href="https://th.bing.com/th/id/OIP.PPBMLiYljuluJZtFxAZwDQHaHa?w=168&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" type="image/png">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
          crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(to right, #d0d9f2, #5a67f2);
        }

        .job-table-container {
            width: 70%;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
        }

        .job-table-container h2 {
            text-align: center;
            font-weight: bold;
            color: #007bff;
            text-decoration: underline;
            margin-bottom: 30px;
        }

        table {
            background-color: #ffffff;
        }

        .table th, .table td {
            vertical-align: middle;
        }
    </style>
</head>
<body>
<div class="job-table-container">
    <h2>LISTED JOBS</h2>
    <table class="table table-hover table-striped table-bordered">
        <thead class="thead-dark text-center">
            <tr>
                <th>JOB ID</th>
                <th>JOB NAME</th>
                <th>JOB TYPE</th>
                <th>DOMAIN</th>
                <th>VALID UPTO</th>
                <th>YEARS OF EXPERIENCE</th>
                <th>COMPANY ID</th>
            </tr>
        </thead>
        <tbody>
        <%
            JobDao jdao = new JobDao();
            ResultSet rs = jdao.getData();
            while (rs.next()) {
        %>
            <tr class="text-center">
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getString(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getString(6) %></td>
                <td><%= rs.getString(7) %></td>
            </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>

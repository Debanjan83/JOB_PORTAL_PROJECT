<%@ page import="master.dto.JobDto" %>
<%@ page import="master.dto.ApplicationDto" %>
<%@ page import="master.dao.JobDao" %>
<%@ page import="master.dao.ApplicationDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="ClientNav.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" content="width=device-width, initial-scale=1.0">
    <title>MY APPLICATIONS</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        body {
            background: linear-gradient(to right, #d0d9f2, #5a67f2);
        }
        .table-container {
            max-width: 800px;
            margin: 40px auto;
            background: #fff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
        }
        .table-container h2 {
            color: #007bff;
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
        }
        .table thead {
            background-color: #343a40;
            color: white;
        }
        td {
            vertical-align: middle !important;
        }
    </style>
</head>
<body>
<div class="table-container">
    <h2>MY APPLICATION</h2>
    <br>
    <table class="table table-hover table-striped text-center">
        <thead>
            <tr>
                <td>JOB ID</td>
                <td>APPLICATION DATE</td>
            </tr>
        </thead>
        <tbody>
        <%
            HttpSession sn = request.getSession();
            String sessionUname = (String) sn.getAttribute("loginUname");
            if (sessionUname != null && !sessionUname.isEmpty())
            {
                ApplicationDao adao = new ApplicationDao();
                ResultSet rs = null;
                try
                {
                    rs = adao.getData(sessionUname);
                    if (rs != null && rs.isBeforeFirst())
                    {
                        while (rs.next())
                        {
        %>
                            <tr>
                                <td><%= rs.getString("JID") %></td>
                                <td><%= rs.getString("DATE") %></td>
                            </tr>
        <%
                        }
                    }
                    else
                    {
        %>
                        <tr><td colspan="2" style="color: red;">No applications found for the specified username</td></tr>
        <%
                    }
                }
                catch (SQLException e)
                {
                    e.printStackTrace();
                }
                finally
                {
                    try
                    {
                        if (rs != null) rs.close();
                    }
                    catch (SQLException se)
                    {
                        se.printStackTrace();
                    }
                }
            }
            else
            {
        %>
            <tr><td colspan="2" style="color: red;">No applications found for the specified username</td></tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>

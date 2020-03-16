<%-- 
    Document   : extract
    Created on : Feb 18, 2020, 10:25:36 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>DirectoryAds &mdash; Colorlib Website Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="css/rangeslider.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body>

        <%@include file="header.html" %>
        <br/><br/>
        <% try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                    Statement stmt = con.createStatement();
                    String query = "select * from signupcontroller";
                    ResultSet rs = stmt.executeQuery(query);
                    while(rs.next()) {
                        out.println(rs.getString("username"));
                        out.println(rs.getString("email"));
                        out.println(rs.getString("password"));
                        out.println(rs.getString("mobile"));
                        out.println(rs.getString("semester"));
                        out.println(rs.getString("branch"));
                        out.println(rs.getString("gender"));
                    }
                    con.close();
            }
        catch(Exception e) {
            out.println(e);
        }
        %>
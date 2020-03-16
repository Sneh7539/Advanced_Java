<%-- 
    Document   : logindb
    Created on : Feb 21, 2020, 8:05:06 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login With Database</title>
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
        <style>
            h2{
                color:green;
            }
        </style>
    </head>
    <body>
        <%@include file="header.html" %>
        <br/><br/>
        <form action="logindb.jsp" class="p-5 bg-white" method="post">
            <div class="row form-group">
                <div class="col-md-12">
                    <label class="text-black" for="subject">Email Address</label> 
                    <input type="email" id="email" class="form-control" name="email">
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <label class="text-black" for="subject">Password</label> 
                    <input type="password" id="subject" class="form-control" name="pwd">
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                </div>
            </div>
            <%
                String email = request.getParameter("email");
                String password = request.getParameter("pwd");
                try {
                    String connectionURL = "jdbc:mysql://localhost:3306/login?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = null;
                    connection = DriverManager.getConnection(connectionURL, "root", "");
                    PreparedStatement pst = connection.prepareStatement("select email,pwd from logincontroller where email=? and pwd=?");
                    pst.setString(1, email);
                    pst.setString(2, password);
                    ResultSet rs = pst.executeQuery();
                    while(rs.next()) {
                        if (email.equals(rs.getString(1)) && password.equals(rs.getString(2)))
                            out.println("<h2>User Verfied and Login Successfull</h2>");

                        else
                            out.println("<h3>Username/Password is wrong.</h3>");

                    }
                    pst.close();
                    connection.close();
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </div>
    </form>
</body>
</html>

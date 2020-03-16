<%-- 
    Document   : signup
    Created on : Feb 18, 2020, 7:35:09 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.util.regex.Pattern" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Advanced JAVA</title>
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
        <div class="site-section bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-7 mb-5"  data-aos="fade">

                        <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Register</font></a></h2>     
                        <form action="signup.jsp" class="p-5 bg-white" method="post">
                            <div class="row form-group">

                                <div class="col-md-12">
                                    <label class="text-black" for="email">Username</label> 
                                    <input type="text"  class="form-control" name="name">
                                </div>
                            </div>

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
                                    <label class="text-black" for="subject">Mobile Number</label> 
                                    <input type="text" id="phoneno" class="form-control" name="mobile">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Semester</label> 
                                    <select class="form-control" name="semester">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Branch</label> 
                                    <select class="form-control" name="branch">
                                        <option value="CE">Computer Engineering</option>
                                        <option value="IT">Information Technology</option>
                                        <option value="ME">Mechanical Engineering</option>
                                        <option value="NT">Nano Technology</option>
                                        <option value="EC">Electronics & Communication</option>
                                        <option value="EE">Electrical Engineering</option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Gender</label> 
                                    <div>
                                        <input type="radio" name="gender" value="male" checked > Male<br/>
                                        <input type="radio" name="gender" value="female"> Female<br/>
                                        <input type="radio" name="gender" value="other"> Other<br/>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                                </div>
                            </div>
<%
    String name = request.getParameter("username");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String mobile = request.getParameter("mobile");
            String semester = request.getParameter("semester");
            String branch = request.getParameter("branch");
            String gender = request.getParameter("gender");
        Class.forName("com.mysql.jdbc.Driver");
    int updateQuery = 0;
 try {
        String connectionURL = "jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    Connection connection = null;
    PreparedStatement pstatement = null;
        connection = DriverManager.getConnection(connectionURL, "root", "");
        String queryString = "insert into usercontroller(name,email,pwd,mobile,semester,branch,gender) values(?,?,?,?,?,?,?)";
        pstatement = connection.prepareStatement(queryString);
        pstatement.setString(1, name);
        pstatement.setString(2, email);
        pstatement.setString(3, pwd);
        pstatement.setString(4, mobile);
        pstatement.setString(5, semester);
        pstatement.setString(6, branch);
        pstatement.setString(7, gender);
        updateQuery = pstatement.executeUpdate(); 
        pstatement.close();
        connection.close();
}
catch(Exception e){
    out.println(e);
}
 %>
        
            <div class="wrapper">
                                <h2 style="color: green">Data is inserted Successfully.</h2>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body> 
</html>


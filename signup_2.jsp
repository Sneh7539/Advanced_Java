<%-- 
    Document   : signup_2
    Created on : Feb 18, 2020, 7:15:30 PM
    Author     : Sneh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SignUp using Database</title>
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
                        <form action="register.do" class="p-5 bg-white" method="post">
                            <div class="row form-group">

                                <div class="col-md-12">
                                    <label class="text-black" for="email">Username</label> 
                                    <input type="text"  class="form-control" name="username">
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
                                    <input type="password" id="subject" class="form-control" name="password">
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
                                String message = new String();
                                int length = name.length();
                                if (length >= 6 && length <= 20) {
                                    message += "Username must be in between 6 to 20<br/>";
                                }
                                int a = 0, b = 0, c = 0;
                                for (int i = 0; i < pwd.length(); i++) {
                                    if (pwd.charAt(i) >= '0' && pwd.charAt(i) <= '9') {
                                        a = 1;
                                    }
                                    if (pwd.charAt(i) >= 'A' && pwd.charAt(i) <= 'Z') {
                                        b = 1;
                                    }
                                    if ((pwd.charAt(i) >= 33 && pwd.charAt(i) <= 47) || (pwd.charAt(i) >= 58 && pwd.charAt(i) <= 64)) {
                                        c = 1;
                                    }
                                }
                                if (a == 0) {
                                    message += "Password must contain atleast one digit.<br/>";
                                }
                                if (b == 0) {
                                    message += "Password must conatin atleast one uppercase letter.<br/>";
                                }
                                if (c == 0) {
                                    message += "Password must contain atleast one special character,<br/>";
                                }

                                if (semester.length() == 0) {
                                    message += "Semester isn't selected.<br/>";
                                }
                                if (branch.length() == 0) {
                                    message += "Branch isn't selected.<br/>";
                                }
                                int fc = email.codePointAt(0);
                                if (!((fc >= 65 && fc <= 90) || (fc >= 97 && fc <= 122) || (fc >= 48 && fc <= 57))) {
                                    message += "Email dorsn't start with a-z, A-Z or 0-9.<br/>";
                                }
                                String emailParts[] = email.split("@");
                                if (emailParts.length > 2) {
                                    message += "Email must contain only one @ sign.<br/>";
                                }
                                if (!email.contains("@")) {
                                    message += "Email must required atleast one @.<br/>";
                                }
                                int d = 1;
                                for (int i = 1; i < email.length(); i++) {
                                    if (!((email.charAt(i) >= 64 && email.charAt(i) <= 90) || (email.charAt(i) >= 91 && email.charAt(i) <= 122) || (email.charAt(i) >= 48 && email.charAt(i) <= 57) || (email.charAt(i) >= 33 && email.charAt(i) <= 47))) {
                                        d = 0;
                                    }
                                }

                                if (d == 0) {
                                    message += "Email must contain a-z, A-Z, 0-9 and also special characters.<br/>";
                                }

                                if (mobile.length() <= 9 || mobile.length() >= 11) {
                                    message += "Phone number isn't valid.<br/>";
                                }

                                if (gender == null) {
                                    message += "Gender isn't selected.<br/>";
                                }

                                if (message.length() != 0) {
                                    out.println("<h1 style='color:red;'>SignUp Failed!</h1><br/>");
                                    out.println("<p>" + message + "</p1><br/>");
                                    out.println("<a href='signup.jsp'>Try Again!</a><br/>");
                                } else {
                                    out.println("<h1 style='color:green;'>SignUp Successfull!</h1><br/>");
                                    out.println("<h2>Welcome " + name + " ! </h2><br/>");
                                    out.println("Go To <a href='index.jsp'>Home Page</a>");
                                }
                                String connectionURL = "jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                                Connection connection = null;
                                PreparedStatement pstatement = null;
                                int updateQuery = 0;
                                if (name != null && email != null && pwd != null && mobile != null && semester != null && branch != null && gender != null) {
                                    if (name != "" && email != "" && pwd != "" && mobile != "" && semester != "" && branch != "" && gender != "") {
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
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
                                        } catch (ClassNotFoundException | SQLException e) {
                                        }
                            %>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/rangeslider.min.js"></script>

        <script src="js/main.js"></script>

    </body>
</html>
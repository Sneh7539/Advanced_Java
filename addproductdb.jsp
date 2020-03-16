<%-- 
    Document   : addproductdb
    Created on : Feb 21, 2020, 10:52:41 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
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
        <br/><br/><br/><br/>
        <form method="post">
            <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<input type="text" name="pname"/></p><br/><br/>
            <p style="color: blueviolet; margin-left: 38%;">Product Description : &nbsp;&nbsp;<textarea name="pdec"></textarea></p><br/><br/>
            <p style="color: blueviolet; margin-left: 38%;">Product Price : &nbsp;&nbsp;<input type="text" name="price"/></p><br/><br/>
            <p style="color: blueviolet; margin-left: 38%;">Product Stock : &nbsp;&nbsp;<input type="text" name="stock"/></p><br/><br/>
            <input style="color:blue; margin-left: 50%;" type="submit" name="add" value="Add"/>
        </form>
        <%
            if (request.getParameter("add") != null) {
                String name = request.getParameter("pname");
                String description = request.getParameter("pdec");
                float price = Float.parseFloat(request.getParameter("price"));
                int stock = Integer.parseInt(request.getParameter("stock"));

                try {
                    String connectionURL = "jdbc:mysql://localhost:3306/login?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = null;
                    connection = DriverManager.getConnection(connectionURL, "root", "");
                    PreparedStatement pst = connection.prepareStatement("insert into product (pname,pdesc,price,stock)" + "values(?,?,?,?)");
                    pst.setString(1, name);
                    pst.setString(2, description);
                    pst.setFloat(3, price);
                    pst.setInt(4, stock);
                    pst.execute();
                } catch (Exception e) {
                    out.println(e);
                }
        %>
        <br/><br/>
            <h1 style="color: red">Product Added Successfully.</h1>
        <%
            }
        %>
    </body>
</html>

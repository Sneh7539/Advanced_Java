<%-- 
    Document   : productController
    Created on : Feb 16, 2020, 5:13:38 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.vvp.web.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            .form
            {
                display: block;
                text-align: center;
            }
            form
            {
                display: inline-block;
                margin-left: auto;
                margin-right: auto;
                text-align: left;
            }
        </style>
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
        <br/><br/><br/><br/>
        <h3 align="center">Select Payment Method</h3><br/>
        <div class="form">
        <form method="post" action="">
            <br/><br/><br/><br/>
            <input type="radio" id="cod" name="method" value="cod" checked="checked"><label for="cod">&nbsp;Cash On Delivery</label><br/>
            <input type="radio" id="net" name="method" value="net"><label for="net">&nbsp;Net Banking</label><br/>
            <input type="radio" id="card" name="method" value="card"><label for="card">&nbsp;Debit/Credit Card</label><br/><br/>
            <input type="submit" name="buy" value="Pay Now">
        </form>
        </div>
        <%
            if (request.getParameter("buy") != null) {
                if (request.getParameter("method").equals("net")) {
                    out.println("<br/>Temprory Not Available");
                } else if (request.getParameter("method").equals("card")) {
                    out.println("<br/>Temprory Not Available");
                } else if (request.getParameter("method").equals("cod")) {
                    if (session.getAttribute("Cart") != null) {
                        if (application.getAttribute("Mobiles") != null) {
                            HashMap<Integer, Integer> cartItems = (HashMap<Integer, Integer>) session.getAttribute("Cart");
                            HashMap<Integer, Products> products = (HashMap<Integer, Products>) application.getAttribute("Mobiles");
                            Set<Integer> keys = cartItems.keySet();
                            Iterator<Integer> iterator = keys.iterator();
                            double sum = 0;
                            while (iterator.hasNext()) {
                                int id = iterator.next();
                                Products p = products.get(id);
                                p.pStock -= cartItems.get(id);
                                products.replace(id, p);
                            }
                        }
                    }
                    response.sendRedirect("display.jsp");
                }
            }
        %>
        <h2 align="center"><%out.println("Thanks For Shopping.");%></h2>
    </body>
</html>
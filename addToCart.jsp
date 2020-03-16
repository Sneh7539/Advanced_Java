<%-- 
    Document   : addToCart
    Created on : Feb 15, 2020, 7:29:41 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
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
        <%
            if (request.getParameter("id") != null && request.getParameter("id") != "") {
                if (application.getAttribute("Mobiles") != null) {
                    HashMap<Integer, Products> items = (HashMap<Integer, Products>) application.getAttribute("Mobiles");
                    Products products = items.get(Integer.parseInt(request.getParameter("id")));
                    if (session.getAttribute("Cart") != null) {
                        HashMap<Integer, Integer> cart = (HashMap<Integer, Integer>) session.getAttribute("Cart");
                        if (cart.containsKey(Integer.parseInt(request.getParameter("id")))) {
                            cart.put(Integer.parseInt(request.getParameter("id")), (cart.get(Integer.parseInt(request.getParameter("id"))) + 1));
                            session.setAttribute("Cart", cart);
                        } else {
                            cart.put(Integer.parseInt(request.getParameter("id")), Integer.parseInt("1"));
                            session.setAttribute("Cart", cart);
                        }
                    } else {
                        HashMap<Integer, Integer> cart = new HashMap<Integer, Integer>();
                        cart.put(Integer.parseInt(request.getParameter("id")), Integer.parseInt("1"));
                        session.setAttribute("Cart", cart);
                    }
                }
            }
            response.sendRedirect("display.jsp");
        %>
    </body>
</html>
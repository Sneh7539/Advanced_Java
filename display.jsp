<%-- 
    Document   : ecommerce
    Created on : Feb 14, 2020, 4:37:02 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.vvp.web.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
            .link {
                position: absolute;
                left: 81%;
            }
            .wrap   {
                text-align: center;
            }
            .wrapper {
                text-align: center;
            }
            .button {
                position: absolute;
                top: 50%;
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
        <div class="link"><a href="viewCart.jsp">Your Cart</a></div>
    <%
        if (application.getAttribute("Mobiles") == null) {
            Products P1 = new Products(1, "iPhone 11 Pro", "Smartphone only for celebrities.", 102750.0, 5);
            Products P2 = new Products(2, "MI Note 8 Pro", "Middle Class Walo Ka Masheeha.", 15999.0, 5);
            Products P3 = new Products(3, "Oneplus 7T", "Camera Resolution Best Only For Advertisement.", 35999.0, 5);

            HashMap<Integer, Products> items = new HashMap<Integer, Products>();
            items.put(1, P1);
            items.put(2, P2);
            items.put(3, P3);

            application.setAttribute("Mobiles", items);
        } else {
            HashMap<Integer, Products> products = (HashMap<Integer, Products>) (application.getAttribute("Mobiles"));
            for (int i = 1; i <= products.size(); i++) {
                Products item = products.get(i);
    %>
    <div class="wrap">
        <br/><br/>
        <p>Product Name : <i><%out.println(item.pName);%></i></p>
        <p>Product Description : <%out.println(item.pDescription);%></p>
        <p>Product Price : <%out.println(item.pPrice);%>INR</p>
        <p>Available Quantity : <%out.println(item.pStock);%>Pieces</p>
        <div class="wrapper"><a href="addToCart.jsp?id=<%out.println(i);%>"><button>Add To Cart</button></a><br/><br/></div>
    </div>
    <%
            }
        }
    %>
</body>
</html>
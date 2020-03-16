<%-- 
    Document   : viewCart
    Created on : Feb 15, 2020, 7:38:47 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="com.vvp.web.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
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
        <table align="center" border="3">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Price</td>
                <td>Quantity</td>
            </tr>
        <%
            if(session.getAttribute("Cart")!=null)
            {
                if(application.getAttribute("Mobiles")!=null)
                {
                    HashMap<Integer,Integer> cartItems = (HashMap<Integer,Integer>)session.getAttribute("Cart");
                    HashMap<Integer,Products> products = (HashMap<Integer,Products>)application.getAttribute("Mobiles");
                    Set<Integer> keys = cartItems.keySet();
                    Iterator<Integer> iterator = keys.iterator();
                    while(iterator.hasNext())
                    {
                        int id = iterator.next();
                        Products p = products.get(id);
                        %>
                        <tr>
                            <td><%out.println(id);%></td>
                            <td><%out.println(p.pName);%></td>
                            <td><%out.println(p.pPrice);%></td>
                            <td><%out.println(cartItems.get(id));%></td>
                        </tr>
                        
                        <%
                    }
                }
                else
                {
                    response.sendRedirect("display.jsp");
                }
            }
            else
            {
                out.println("No Products Are Available.");
            }
            
        %>
        
        </table>
        <br/><br/>
        <div class="wrapper">
        <a href="checkout.jsp" ><button>Pay Now</button></a>
        </div>
    </body>
    </body>
</html>


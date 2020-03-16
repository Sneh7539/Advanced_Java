<%-- 
    Document   : editProduct
    Created on : Feb 21, 2020, 1:02:46 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="databaseConnection.jsp" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Product</title>
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
        <%
            if(request.getParameter("id")!=null)
            {
                Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM product WHERE pid = "+request.getParameter("id")+"");
                rs.next();
                String pname = rs.getString("pname");
                String pdesc = rs.getString("pdesc");
                float price = rs.getFloat("price");
                int stock = rs.getInt("stock");
                %>
                <form method="post" autocomplete="off">
                    <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<input type="text" name="pname" value="<%out.println(pname);%>"/></p><br/><br/>
                    <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<textarea placeholder="Product Description" name="pdec"><%out.println(pdesc);%></textarea></p><br/><br/>
                    <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<input type="text" placeholder="Product Price" name="price" value="<%out.println(price);%>"/></p><br/><br/>
                    <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<input type="text" placeholder="Product Stock" name="stock" value="<%out.println(stock);%>"/></p><br/><br/><br/>
                    <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<input type="submit" name="edit" value="Edit"/>
                </form>
                <%
                    if(request.getParameter("edit")!=null)
                    {
                        String name = request.getParameter("pname");
                        String description = request.getParameter("pdec");
                        float new_price = Float.parseFloat(request.getParameter("price"));
                        int new_stock = Integer.parseInt(request.getParameter("stock"));
                        PreparedStatement new_stmt = connection.prepareStatement("UPDATE product SET pname = ?,pdesc=?,price=?,stock=? WHERE pid="+request.getParameter("id")+"");
                        new_stmt.setString(1, name);
                        new_stmt.setString(2, description);
                        new_stmt.setFloat(3, new_price);
                        new_stmt.setInt(4, new_stock);
                        new_stmt.execute();
            %>
            <h1 style="color: green;">Product Edited Successfully.</h1>
            <%
                    }
            }
            else
            {
                response.sendRedirect("viewProduct.jsp");
            }
        %>
    </body>
</html>

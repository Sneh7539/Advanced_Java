<%-- 
    Document   : viewProduct
    Created on : Feb 21, 2020, 11:44:14 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<%@include file="databaseConnection.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Available Product</title>
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
        <form method="post" action="viewProduct.jsp">
            <br/><br/><br/><br/>
            <h1 style="color: greenyellow; margin-left: 40%;">Available Products</h1>
            <br/>
            <input style="margin-left: 65%;" type="text" placeholder="Search Product By ID" name="search"/>&nbsp;
            <input type="submit" name="search" value="Search"/>
        </form>
        <br/><br/>
        <table border="5" style="border-color: #EF3159; margin-left: 30%; border-collapse: collapse">
            <tr>
                <td align="center">Product ID</td>
                <td align="center">Product Name</td>
                <td align="center">Product Description</td>
                <td align="center">Product Price</td>
                <td align="center">Product Stock</td>
                <td align="center">Edit Product</td>
                <td align="center">Delete Product</td>
            </tr>
            <%      if (request.getParameter("search") == null) {
                    try {
                        connection = DriverManager.getConnection(connectionURL, "root", "");
                        PreparedStatement pst = connection.prepareStatement("select * from product");
                        ResultSet rs = pst.executeQuery();
                        while (rs.next()) {
            %>
            <tr>
                <td align="center"><%out.println(rs.getInt("pid"));%></td>
                <td align="center"><%out.println(rs.getString("pname"));%></td>
                <td align="center"><%out.println(rs.getString("pdesc"));%></td>
                <td align="center"><%out.println(rs.getFloat("price"));%></td>
                <td align="center"><%out.println(rs.getInt("stock"));%></td>
                <td align="center"><a style="color: greenyellow;" href="editProduct.jsp?id=<%out.print(rs.getInt("pid"));%>">Edit</a></td>
                <td align="center"><a style="color: red;" href="deleteProduct.jsp?id=<%out.print(rs.getInt("pid"));%>">Delete</a></td>
            </tr>
            <%
                    }
                } catch (Exception e) {
                    out.println(e);
                }
            } else {
                int search = Integer.parseInt(request.getParameter("search"));
                try {
                    connection = DriverManager.getConnection(connectionURL, "root", "");
                    PreparedStatement pst = connection.prepareStatement("select * from product where pid = ?");
                    pst.setInt(1, search);
                    ResultSet rs = pst.executeQuery();
                    while (rs.next()) {
            %>
            <tr>
                <td align="center"><%out.println(rs.getInt("pid"));%></td>
                <td align="center"><%out.println(rs.getString("pname"));%></td>
                <td align="center"><%out.println(rs.getString("pdesc"));%></td>
                <td align="center"><%out.println(rs.getFloat("price"));%></td>
                <td align="center"><%out.println(rs.getInt("stock"));%></td>
                <td align="center"><a style="color: greenyellow;" href="editProduct.jsp?id=<%rs.getInt("pid");%>">Edit</a></td>
                <td align="center"><a style="color: red;" href="deleteProduct.jsp?id=<%rs.getInt("pid");%>">Delete</a></td>
            </tr>
            <%
                        }
                    } catch (Exception e) {
                        out.println(e);
                    }
                }
            %>
        </table>
        <form action="addproductdb.jsp">
            <br/><br/>
            <button style="margin-left: 55%; color: #000; background: #FFF">Add New Product</button>
        </form>
    </body>
</html>

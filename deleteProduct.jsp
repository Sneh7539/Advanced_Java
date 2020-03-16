<%-- 
    Document   : deletedb.jsp
    Created on : Feb 21, 2020, 11:23:43 AM
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
        <title>Delete Product</title>
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
            if(request.getParameter("id")!=null) {
                int id = Integer.parseInt(request.getParameter("id"));
                try {
                        connection = DriverManager.getConnection(connectionURL, "root", "");
                        PreparedStatement pst = connection.prepareStatement("delete from product where pid = ?");
                        PreparedStatement pst2 = connection.prepareStatement("select * from product where pid = ?");
                        pst.setInt(1, id);
                        pst2.setInt(1, id);
                        ResultSet rs = pst2.executeQuery();
                        pst.executeUpdate();
                        while(rs.next())
                        {
                            if(id==rs.getInt("pid")) {
                                %>
                                
                                <br/><br/><br/><br/>
                                <table border="5" style="color: red; margin-left: 35%;">
                                    <tr>
                                        <td align="center" style="color:red;"><%out.println(rs.getInt("pid"));%></td>
                                        <td align="center" style="color:red;"><%out.println(rs.getString("pname"));%></td>
                                        <td align="center" style="color:red;"><%out.println(rs.getString("pdesc"));%></td>
                                        <td align="center" style="color:red;"><%out.println(rs.getFloat("price"));%></td>
                                        <td align="center" style="color:red;"><%out.println(rs.getInt("stock"));%></td>
                                    </tr>
                                </table>
                                <h4 style="color: purple; margin-left: 30%">This Product Has Been Deleted Successfully.</h4>
                                <%
                            }
                        }
                }
                catch(Exception e) {
                    out.println(e);
                }
            }
        %>
    </body>
</html>

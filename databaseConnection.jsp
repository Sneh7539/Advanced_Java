<%-- 
    Document   : databaseConnection
    Created on : Feb 21, 2020, 12:24:20 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Database</title>
    </head>
    <body>
        <%
                String connectionURL = "jdbc:mysql://localhost:3306/login?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                Class.forName("com.mysql.jdbc.Driver");
                Connection connection = null;
                connection = DriverManager.getConnection(connectionURL, "root", "");
        %>
    </body>
</html>

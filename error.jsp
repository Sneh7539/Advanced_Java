<%-- 
    Document   : error
    Created on : Jan 20, 2020, 1:35:35 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Error Page</title>
    </head>
    <body>
        <% if(response.getStatus() == 500)
            { %>
                <font color="red"> Error : 
                <%=exception.getMessage()%>
                </font><br/>
            }
    </body>
</html>

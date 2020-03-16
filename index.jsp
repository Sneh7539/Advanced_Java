<%-- 
    Document   : index
    Created on : Feb 18, 2020, 6:52:48 PM
    Author     : Sneh
--%>

<!DOCTYPE HTML>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<HTML>
<head>
<title>This is a jsp page</title>
</head>
<body>
<FORM action="index.jsp" method="post">
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >

<TR>
<TH width="50%">Name</TH>
<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
</tr>
<TR>
<TH width="50%">Email</TH>
<TD width="50%"><INPUT TYPE="text" NAME="email"></TD>
</tr>
<TR>
<TH width="50%">Password</TH>
<TD width="50%"><INPUT TYPE="text" NAME="pwd"></TD>
</tr>
<TR>
<TH width="50%">Mobile</TH>
<TD width="50%"><INPUT TYPE="text" NAME="mobile"></TD>
</tr>
<TR>
<TH width="50%">Semester</TH>
<TD width="50%"><INPUT TYPE="text" NAME="semester"></TD>
</tr>
<TR>
<TH width="50%">Branch</TH>
<TD width="50%"><INPUT TYPE="text" NAME="branch"></TD>
</tr>
<TR>
<TH width="50%">Gender</TH>
<TD width="50%"><INPUT TYPE="text" NAME="gender"></TD>
</tr>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>
<%
            String name = request.getParameter("username");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String mobile = request.getParameter("mobile");
            String semester = request.getParameter("semester");
            String branch = request.getParameter("branch");
            String gender = request.getParameter("gender");
String connectionURL = "jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
Connection connection = null;
PreparedStatement pstatement = null;
int updateQuery = 0;
if(name!=null && email!=null && pwd!=null && mobile!=null && semester!=null && branch!=null && gender!=null)
{
if(name!="" && email!="" && pwd!="" && mobile!="" && semester!="" && branch!="" && gender!="")
{
try {
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL,"root","");
String queryString = "insert into signupcontroller(Name,City,Phone) values(?,?,?,?,?,?,?)";
pstatement = connection.prepareStatement(queryString);
pstatement.setString(1, name);
pstatement.setString(2, email);
pstatement.setString(3, pwd);
pstatement.setString(4, mobile);
pstatement.setString(5, semester);
pstatement.setString(6, branch);
pstatement.setString(7, gender);
updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>

<%
}
} 
catch (Exception ex){
out.println("Unable to connect to batabase.");
}finally {
// close all the connections.
pstatement.close();
connection.close();
}
}
}
%>
</FORM>
</body> 
</html>
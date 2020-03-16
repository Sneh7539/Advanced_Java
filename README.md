# Advanced_Java
This repository contains program abount web application maintaining, session maintaining etc which are given in Advanced Java Lab Schedule.
# All the files contains code is given below.

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
<%-- 
    Document   : login
    Created on : Feb 14, 2020, 4:37:02 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      
      <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
              <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                <li class="has-children">
                  <a href="#"> <font color="black"> Assignments </font> </a>
                  <ul class="dropdown">
                    <li class="has-children">
                  <a href="#">Assignment 1</a>
                  <ul class="dropdown">
                    <li><a href="register.html">Register</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="table.html">Table</a></li>
                    <li><a href="counter.html">Count Visitors</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 2</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 3</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 4</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
                <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>
      <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">




          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

  </div>
      <!-- </div> -->
      

  
    <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade" >

            <h2 class="mb-5 text-black">Log In</h2>

            <form action="dynamicHTML.jsp" class="p-5 bg-white" method="post">
             
              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="username">Enter Number Of Fields To Generate :</label> 
                  <input type="text" name="field" class="form-control">
                </div>
              </div>
        
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" name="submit" value="Generate" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>
                 </form>
            
            <div class="form-group">
                <br/>
           Text Boxes as Per Request Generated Given Below
            <%
              if (request.getParameter("field") != null) {
              int number = Integer.parseInt(request.getParameter("field"));
              
               for (int i = 0; i < number; i++) {
                   int j = i + 1;
            
            %>
                  <input type="text" name="field" class="form-control" placeholder="textbox - <%= j%>">
                </div>
                <%        }
                    }
                %>
            </div>
          </div>
          
        </div>
      </div>
           
            <script src="js/jquery-3.3.1.min.js"></script>
            <script src="js/jquery-migrate-3.0.1.min.js"></script>
            <script src="js/jquery-ui.js"></script>
            <script src="js/popper.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/jquery.stellar.min.js"></script>
            <script src="js/jquery.countdown.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/bootstrap-datepicker.min.js"></script>
            <script src="js/aos.js"></script>
            <script src="js/rangeslider.min.js"></script>

            <script src="js/main.js"></script>

  </body>
</html>
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

<%-- 
    Document   : extract
    Created on : Feb 18, 2020, 10:25:36 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
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
        <br/><br/>
        <% try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
                    Statement stmt = con.createStatement();
                    String query = "select * from signupcontroller";
                    ResultSet rs = stmt.executeQuery(query);
                    while(rs.next()) {
                        out.println(rs.getString("username"));
                        out.println(rs.getString("email"));
                        out.println(rs.getString("password"));
                        out.println(rs.getString("mobile"));
                        out.println(rs.getString("semester"));
                        out.println(rs.getString("branch"));
                        out.println(rs.getString("gender"));
                    }
                    con.close();
            }
        catch(Exception e) {
            out.println(e);
        }
        %>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div></div>
    </body>
</html>

<header class="site-navbar container py-0 " role="banner">

            <!-- <div class="container"> -->
            <div class="row align-items-center">

                <div class="col-6 col-xl-2">
                    <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
                </div>
                <div class="col-12 col-md-10 d-none d-xl-block">
                    <nav class="site-navigation position-relative text-right" role="navigation">

                        <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                            <li class="has-children">
                                <a href="#"> <font color="black"> Assignments </font> </a>
                                <ul class="dropdown">
                                    <li class="has-children">
                                        <a href="#">Assignment 1</a>
                                        <ul class="dropdown">
                                            <li><a href="register.html">Register</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="table.html">Table</a></li>
                                            <li><a href="counter.html">Count Visitors</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Assignment 2</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Practical 1</a></li>
                                            <li><a href="#">Practical 2</a></li>
                                            <li><a href="#">Practical 3</a></li>
                                            <li><a href="#">Practical 4</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Assignment 3</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Practical 1</a></li>
                                            <li><a href="#">Practical 2</a></li>
                                            <li><a href="#">Practical 3</a></li>
                                            <li><a href="#">Practical 4</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Assignment 4</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Practical 1</a></li>
                                            <li><a href="#">Practical 2</a></li>
                                            <li><a href="#">Practical 3</a></li>
                                            <li><a href="#">Practical 4</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                            <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                            <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
                        </ul>
                    </nav>
                </div>


                <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
                    <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
                </div>

            </div>
            <!-- </div> -->

        </header>
        <div class="site-wrap">

            <div class="site-mobile-menu">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>

            <header class="site-navbar container py-0 " role="banner">




                <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
                    <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
                </div>

        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/rangeslider.min.js"></script>

        <script src="js/main.js"></script>
<!DOCTYPE html>
<html lang="en">
  <head>
      <title>Advanced Java Projects</title>
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

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        
          <span class="icon-close2 js-menu-toggle"></span>
        
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
              <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                <li class="has-children">
                  <a href="#"> <font color="black"> Assignments </font> </a>
                  <ul class="dropdown">
                    <li class="has-children">
                  <a href="#">Assignment 1</a>
                  <ul class="dropdown">
                    <li><a href="register.html">Register</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="table.html">Table</a></li>
                    <li><a href="counter.html">Count Visitors</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 2</a>
                  <ul class="dropdown">
                    <li><a href="Calc.jsp">Claculator</a></li>
                    <li><a href="login.jsp">Login Error</a></li>
                    <li><a href="tempratureController.jsp">Temprature</a></li>
                    <li><a href="dynamicHTML.jsp">Dynamic HTML Generator</a></li>
                    <li><a href="display.jsp">Add to cart</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 3</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 4</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
                <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  

    <div class="site-blocks-cover overlay">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-12">
            
            
            <div class="row justify-content-center mb-4">
              <div class="col-md-8 text-center">
                  <h1 class="" data-aos="fade-up"><font color="black">Welcome To Advanced Java Projects</font></h1>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">DirectoryAds</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="listings.html">Ads</a></li>
                <li class="has-children">
                  <a href="about.html">About</a>
                  <ul class="dropdown">
                    <li><a href="#">The Company</a></li>
                    <li><a href="#">The Leadership</a></li>
                    <li><a href="#">Philosophy</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li class="mr-5"><a href="contact.html">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span>Log In</a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded">Register</span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>Ads Listings</h1>
                <p class="mb-0">Choose product you want</p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">

            <div class="row">
              <div class="col-lg-6">
                
                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_1.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Cars &amp; Vehicles</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">Red Luxury Car</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>
              <div class="col-lg-6">

                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Real Estate</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">House with Swimming Pool</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>

              <div class="col-lg-6">
                
                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Furniture</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>
              <div class="col-lg-6">

                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_4.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Electronics</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">iPhone X gray</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>
                
              </div>


              <div class="col-lg-6">
                
                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Real Estate</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">House with Swimming Pool</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>
              <div class="col-lg-6">

                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Furniture</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>
                
              </div>


              <div class="col-lg-6">
                
                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_1.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Cars &amp; Vehicles</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">Red Luxury Car</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>
              <div class="col-lg-6">

                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Real Estate</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">House with Swimming Pool</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>

              <div class="col-lg-6">
                
                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Furniture</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>

              </div>
              <div class="col-lg-6">

                <div class="d-block d-md-flex listing vertical">
                  <a href="#" class="img d-block" style="background-image: url('images/img_4.jpg')"></a>
                  <div class="lh-content">
                    <span class="category">Electronics</span>
                    <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                    <h3><a href="#">iPhone X gray</a></h3>
                    <address>Don St, Brooklyn, New York</address>
                    <p class="mb-0">
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-warning"></span>
                      <span class="icon-star text-secondary"></span>
                      <span class="review">(3 Reviews)</span>
                    </p>
                  </div>
                </div>
                
              </div>


              

            </div>

            <div class="col-12 mt-5 text-center">
              <div class="custom-pagination">
                <span>1</span>
                <a href="#">2</a>
                <a href="#">3</a>
                <span class="more-page">...</span>
                <a href="#">10</a>
              </div>
            </div>

          </div>
          <div class="col-lg-3 ml-auto">

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Filters</h3>
              <form action="#" method="post">
                <div class="form-group">
                  <input type="text" placeholder="What are you looking for?" class="form-control">
                </div>
                <div class="form-group">
                  <div class="select-wrap">
                      <span class="icon"><span class="icon-keyboard_arrow_down"></span></span>
                      <select class="form-control" name="" id="">
                        <option value="">All Categories</option>
                        <option value="" selected="">Real Estate</option>
                        <option value="">Books &amp;  Magazines</option>
                        <option value="">Furniture</option>
                        <option value="">Electronics</option>
                        <option value="">Cars &amp; Vehicles</option>
                        <option value="">Others</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                  <!-- select-wrap, .wrap-icon -->
                  <div class="wrap-icon">
                    <span class="icon icon-room"></span>
                    <input type="text" placeholder="Location" class="form-control">
                  </div>
                </div>
              </form>
            </div>
            
            <div class="mb-5">
              <form action="#" method="post">
                <div class="form-group">
                  <p>Radius around selected destination</p>
                </div>
                <div class="form-group">
                  <input type="range" min="0" max="100" value="20" data-rangeslider>
                </div>
              </form>
            </div>

            <div class="mb-5">
              <form action="#" method="post">
                <div class="form-group">
                  <p>Category 'Real Estate' is selected</p>
                  <p>More filters</p>
                </div>
                <div class="form-group">
                  <ul class="list-unstyled">
                    <li>
                      <label for="option1">
                        <input type="checkbox" id="option1">
                        Residential
                      </label>
                    </li>
                    <li>
                      <label for="option2">
                        <input type="checkbox" id="option2">
                        Commercial
                      </label>
                    </li>
                    <li>
                      <label for="option3">
                        <input type="checkbox" id="option3">
                        Industrial
                      </label>
                    </li>
                    <li>
                      <label for="option4">
                        <input type="checkbox" id="option4">
                        Land
                      </label>
                    </li>
                  </ul>
                </div>
              </form>
            </div>

            <div class="mb-5">
              <h3 class="h6 mb-3">More Info</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatem placeat facilis, reprehenderit eius officiis.</p>
            </div>

          </div>

        </div>
      </div>
    </div>

    <div class="site-section bg-light">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-7 text-left border-primary">
            <h2 class="font-weight-light text-primary">Trending Today</h2>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-lg-6">

            <div class="d-block d-md-flex listing">
              <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
              <div class="lh-content">
                <span class="category">Real Estate</span>
                <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                <h3><a href="#">House with Swimming Pool</a></h3>
                <address>Don St, Brooklyn, New York</address>
                <p class="mb-0">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-secondary"></span>
                  <span class="review">(3 Reviews)</span>
                </p>
              </div>
            </div>
            <div class="d-block d-md-flex listing">
                <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                <div class="lh-content">
                  <span class="category">Furniture</span>
                  <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                  <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                  <address>Don St, Brooklyn, New York</address>
                  <p class="mb-0">
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-secondary"></span>
                    <span class="review">(3 Reviews)</span>
                  </p>
                </div>
              </div>

              <div class="d-block d-md-flex listing">
                <a href="#" class="img d-block" style="background-image: url('images/img_4.jpg')"></a>
                <div class="lh-content">
                  <span class="category">Electronics</span>
                  <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                  <h3><a href="#">iPhone X gray</a></h3>
                  <address>Don St, Brooklyn, New York</address>
                  <p class="mb-0">
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-secondary"></span>
                    <span class="review">(3 Reviews)</span>
                  </p>
                </div>
              </div>

             

          </div>
          <div class="col-lg-6">

            <div class="d-block d-md-flex listing">
              <a href="#" class="img d-block" style="background-image: url('images/img_1.jpg')"></a>
              <div class="lh-content">
                <span class="category">Cars &amp; Vehicles</span>
                <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                <h3><a href="#">Red Luxury Car</a></h3>
                <address>Don St, Brooklyn, New York</address>
                <p class="mb-0">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-secondary"></span>
                  <span class="review">(3 Reviews)</span>
                </p>
              </div>
            </div>

            <div class="d-block d-md-flex listing">
              <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
              <div class="lh-content">
                <span class="category">Real Estate</span>
                <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                <h3><a href="#">House with Swimming Pool</a></h3>
                <address>Don St, Brooklyn, New York</address>
                <p class="mb-0">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-secondary"></span>
                  <span class="review">(3 Reviews)</span>
                </p>
              </div>
            </div>
            <div class="d-block d-md-flex listing">
                <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                <div class="lh-content">
                  <span class="category">Furniture</span>
                  <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                  <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                  <address>Don St, Brooklyn, New York</address>
                  <p class="mb-0">
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-secondary"></span>
                    <span class="review">(3 Reviews)</span>
                  </p>
                </div>
              </div>

          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section bg-white">
      <div class="container">

        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Testimonials</h2>
          </div>
        </div>

        <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-3">
                <p>John Smith</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-3">
                <p>Christine Aguilar</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_4.jpg" alt="Image" class="img-fluid mb-3">
                <p>Robert Spears</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_5.jpg" alt="Image" class="img-fluid mb-3">
                <p>Bruce Rogers</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

        </div>
      </div>
    </div>


    <div class="newsletter bg-primary py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <h2>Newsletter</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
          <div class="col-md-6">
            
            <form class="d-flex">
              <input type="text" class="form-control" placeholder="Email">
              <input type="submit" value="Subscribe" class="btn btn-white"> 
            </form>
          </div>
        </div>
      </div>
    </div>
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">DirectoryAds</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="listings.html">Ads</a></li>
                <li class="has-children">
                  <a href="about.html">About</a>
                  <ul class="dropdown">
                    <li><a href="#">The Company</a></li>
                    <li><a href="#">The Leadership</a></li>
                    <li><a href="#">Philosophy</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li class="mr-5"><a href="contact.html">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span>Log In</a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded">Register</span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>Happy Buying Online</h1>
                <p class="mb-0">Don St, Brooklyn, New York</p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
            
            <div class="mb-4" style="margin-top: -150px;">
              <div class="slide-one-item home-slider owl-carousel">
                <div><img src="images/img_2.jpg" alt="Image" class="img-fluid rounded"></div>
                <div><img src="images/img_3.jpg" alt="Image" class="img-fluid rounded"></div>
                <div><img src="images/img_4.jpg" alt="Image" class="img-fluid rounded"></div>
                <div><img src="images/img_1.jpg" alt="Image" class="img-fluid rounded"></div>
              </div>
            </div>
            
            <h4 class="h5 mb-4 text-black">Description</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Error repellat architecto maiores vero, quasi dolor, accusantium autem aliquam, ullam sequi saepe illum eaque aperiam eius amet! Necessitatibus nam sapiente obcaecati sit, fugit omnis non sunt distinctio aliquid, quibusdam excepturi hic?</p>
            <p>Nisi, error. Molestias, quidem eaque sequi aut perspiciatis assumenda obcaecati ut quod eius reprehenderit. Iure rem numquam totam odio dignissimos aspernatur soluta. Corporis suscipit modi iste consequatur, repellat nihil omnis molestias optio. Dolorem ullam eius officia, eum ratione dolorum assumenda.</p>
            <p>Soluta corporis blanditiis cupiditate debitis eveniet, temporibus ut cumque sint repudiandae quidem tenetur commodi id, quam. Sapiente corrupti magnam quis nulla, asperiores neque tenetur labore aperiam provident nostrum sequi delectus voluptatem fuga officiis repellat, ratione aspernatur eius repellendus modi reprehenderit.</p>
            <p>Sapiente molestias voluptate cupiditate blanditiis quasi qui aperiam accusamus aspernatur ipsam velit nihil quaerat voluptatum soluta laboriosam ipsum veritatis at reiciendis quod voluptates, saepe harum dignissimos placeat dolorum aliquid! Quod quasi praesentium optio ratione non et sit quos excepturi cum?</p>

            <p class="mt-3"><a href="#" class="btn btn-primary">Get In Touch</a></p>

          </div>
          <div class="col-lg-3 ml-auto">

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Filters</h3>
              <form action="#" method="post">
                <div class="form-group">
                  <input type="text" placeholder="What are you looking for?" class="form-control">
                </div>
                <div class="form-group">
                  <div class="select-wrap">
                      <span class="icon"><span class="icon-keyboard_arrow_down"></span></span>
                      <select class="form-control" name="" id="">
                        <option value="">All Categories</option>
                        <option value="" selected="">Real Estate</option>
                        <option value="">Books &amp;  Magazines</option>
                        <option value="">Furniture</option>
                        <option value="">Electronics</option>
                        <option value="">Cars &amp; Vehicles</option>
                        <option value="">Others</option>
                      </select>
                    </div>
                </div>
                <div class="form-group">
                  <!-- select-wrap, .wrap-icon -->
                  <div class="wrap-icon">
                    <span class="icon icon-room"></span>
                    <input type="text" placeholder="Location" class="form-control">
                  </div>
                </div>
              </form>
            </div>
            
            <div class="mb-5">
              <form action="#" method="post">
                <div class="form-group">
                  <p>Radius around selected destination</p>
                </div>
                <div class="form-group">
                  <input type="range" min="0" max="100" value="20" data-rangeslider>
                </div>
              </form>
            </div>

            <div class="mb-5">
              <form action="#" method="post">
                <div class="form-group">
                  <p>Category 'Real Estate' is selected</p>
                  <p>More filters</p>
                </div>
                <div class="form-group">
                  <ul class="list-unstyled">
                    <li>
                      <label for="option1">
                        <input type="checkbox" id="option1">
                        Residential
                      </label>
                    </li>
                    <li>
                      <label for="option2">
                        <input type="checkbox" id="option2">
                        Commercial
                      </label>
                    </li>
                    <li>
                      <label for="option3">
                        <input type="checkbox" id="option3">
                        Industrial
                      </label>
                    </li>
                    <li>
                      <label for="option4">
                        <input type="checkbox" id="option4">
                        Land
                      </label>
                    </li>
                  </ul>
                </div>
              </form>
            </div>

            <div class="mb-5">
              <h3 class="h6 mb-3">More Info</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti voluptatem placeat facilis, reprehenderit eius officiis.</p>
            </div>

          </div>

        </div>
      </div>
    </div>

    <div class="site-section bg-light">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-7 text-left border-primary">
            <h2 class="font-weight-light text-primary">Trending Today</h2>
          </div>
        </div>
        <div class="row mt-5">
          <div class="col-lg-6">

            <div class="d-block d-md-flex listing">
              <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
              <div class="lh-content">
                <span class="category">Real Estate</span>
                <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                <h3><a href="#">House with Swimming Pool</a></h3>
                <address>Don St, Brooklyn, New York</address>
                <p class="mb-0">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-secondary"></span>
                  <span class="review">(3 Reviews)</span>
                </p>
              </div>
            </div>
            <div class="d-block d-md-flex listing">
                <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                <div class="lh-content">
                  <span class="category">Furniture</span>
                  <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                  <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                  <address>Don St, Brooklyn, New York</address>
                  <p class="mb-0">
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-secondary"></span>
                    <span class="review">(3 Reviews)</span>
                  </p>
                </div>
              </div>

              <div class="d-block d-md-flex listing">
                <a href="#" class="img d-block" style="background-image: url('images/img_4.jpg')"></a>
                <div class="lh-content">
                  <span class="category">Electronics</span>
                  <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                  <h3><a href="#">iPhone X gray</a></h3>
                  <address>Don St, Brooklyn, New York</address>
                  <p class="mb-0">
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-secondary"></span>
                    <span class="review">(3 Reviews)</span>
                  </p>
                </div>
              </div>

             

          </div>
          <div class="col-lg-6">

            <div class="d-block d-md-flex listing">
              <a href="#" class="img d-block" style="background-image: url('images/img_1.jpg')"></a>
              <div class="lh-content">
                <span class="category">Cars &amp; Vehicles</span>
                <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                <h3><a href="#">Red Luxury Car</a></h3>
                <address>Don St, Brooklyn, New York</address>
                <p class="mb-0">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-secondary"></span>
                  <span class="review">(3 Reviews)</span>
                </p>
              </div>
            </div>

            <div class="d-block d-md-flex listing">
              <a href="#" class="img d-block" style="background-image: url('images/img_2.jpg')"></a>
              <div class="lh-content">
                <span class="category">Real Estate</span>
                <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                <h3><a href="#">House with Swimming Pool</a></h3>
                <address>Don St, Brooklyn, New York</address>
                <p class="mb-0">
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-warning"></span>
                  <span class="icon-star text-secondary"></span>
                  <span class="review">(3 Reviews)</span>
                </p>
              </div>
            </div>
            <div class="d-block d-md-flex listing">
                <a href="#" class="img d-block" style="background-image: url('images/img_3.jpg')"></a>
                <div class="lh-content">
                  <span class="category">Furniture</span>
                  <a href="#" class="bookmark"><span class="icon-heart"></span></a>
                  <h3><a href="#">Wooden Chair &amp; Table</a></h3>
                  <address>Don St, Brooklyn, New York</address>
                  <p class="mb-0">
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-warning"></span>
                    <span class="icon-star text-secondary"></span>
                    <span class="review">(3 Reviews)</span>
                  </p>
                </div>
              </div>

          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section bg-white">
      <div class="container">

        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Testimonials</h2>
          </div>
        </div>

        <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-3">
                <p>John Smith</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-3">
                <p>Christine Aguilar</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_4.jpg" alt="Image" class="img-fluid mb-3">
                <p>Robert Spears</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_5.jpg" alt="Image" class="img-fluid mb-3">
                <p>Bruce Rogers</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

        </div>
      </div>
    </div>


    <div class="newsletter bg-primary py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <h2>Newsletter</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
          <div class="col-md-6">
            
            <form class="d-flex">
              <input type="text" class="form-control" placeholder="Email">
              <input type="submit" value="Subscribe" class="btn btn-white"> 
            </form>
          </div>
        </div>
      </div>
    </div>
  
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
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
      
      <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
              <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                <li class="has-children">
                  <a href="#"> <font color="black"> Assignments </font> </a>
                  <ul class="dropdown">
                    <li class="has-children">
                  <a href="#">Assignment 1</a>
                  <ul class="dropdown">
                    <li><a href="register.html">Register</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="table.html">Table</a></li>
                    <li><a href="counter.html">Count Visitors</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 2</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 3</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 4</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
                <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">




          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

  </div>
      <!-- </div> -->
      

  
    <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">

              <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Login Form</font></a></h2>

            <form action="helloworld.do" class="p-5 bg-white">
             
              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input name="user" type="text" id="user" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Password</label> 
                  <input name="password" type="password" id="subject" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          
        </div>
      </div>
    </div>
           
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<%-- 
    Document   : login
    Created on : Feb 14, 2020, 4:37:02 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
      
      <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
              <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                <li class="has-children">
                  <a href="#"> <font color="black"> Assignments </font> </a>
                  <ul class="dropdown">
                    <li class="has-children">
                  <a href="#">Assignment 1</a>
                  <ul class="dropdown">
                    <li><a href="register.html">Register</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="table.html">Table</a></li>
                    <li><a href="counter.html">Count Visitors</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 2</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 3</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 4</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
                <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>
      <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">




          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

  </div>
      <!-- </div> -->
      

  
    <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade" >

            <h2 class="mb-5 text-black">Log In</h2>

            <form action="login.jsp" class="p-5 bg-white" method="post">
             
              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="username">Username</label> 
                  <input type="text" name="username" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Password</label> 
                  <input type="password" name="password" class="form-control">
                </div>
              </div>

            

            
              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" name="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>
                 
  
            </form>
            <%
            if(request.getParameter("submit")!=null)
            {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                
                if(!username.equals("sneh") || !password.equals("sneh"))
                    out.println("<br/><p style='color:red'>Please Enter The Valid Username or Password.<p><br/>");
                else
                    out.println("<br/><p style='color:green'>Login Successfull<p><br/>");
            }
        %>
          </div>
          
        </div>
      </div>
    </div>
           
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<%-- 
    Document   : loginController
    Created on : Feb 17, 2020, 1:10:05 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" import="java.*" %>

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
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
        %>
    </body>
</html>


<%-- 
    Document   : logindb
    Created on : Feb 21, 2020, 8:05:06 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login With Database</title>
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
        <style>
            h2{
                color:green;
            }
        </style>
    </head>
    <body>
        <%@include file="header.html" %>
        <br/><br/>
        <form action="logindb.jsp" class="p-5 bg-white" method="post">
            <div class="row form-group">
                <div class="col-md-12">
                    <label class="text-black" for="subject">Email Address</label> 
                    <input type="email" id="email" class="form-control" name="email">
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <label class="text-black" for="subject">Password</label> 
                    <input type="password" id="subject" class="form-control" name="pwd">
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                </div>
            </div>
            <%
                String email = request.getParameter("email");
                String password = request.getParameter("pwd");
                try {
                    String connectionURL = "jdbc:mysql://localhost:3306/login?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = null;
                    connection = DriverManager.getConnection(connectionURL, "root", "");
                    PreparedStatement pst = connection.prepareStatement("select email,pwd from logincontroller where email=? and pwd=?");
                    pst.setString(1, email);
                    pst.setString(2, password);
                    ResultSet rs = pst.executeQuery();
                    while(rs.next()) {
                        if (email.equals(rs.getString(1)) && password.equals(rs.getString(2)))
                            out.println("<h2>User Verfied and Login Successfull</h2>");

                        else
                            out.println("<h3>Username/Password is wrong.</h3>");

                    }
                    pst.close();
                    connection.close();
                } catch (Exception e) {
                    out.println(e);
                }
            %>
        </div>
    </form>
</body>
</html>

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
      
      <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
              <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                <li class="has-children">
                  <a href="#"> <font color="black"> Assignments </font> </a>
                  <ul class="dropdown">
                    <li class="has-children">
                  <a href="#">Assignment 1</a>
                  <ul class="dropdown">
                    <li><a href="register.html">Register</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="table.html">Table</a></li>
                    <li><a href="counter.html">Count Visitors</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 2</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 3</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 4</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
                <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

    <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">

              <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Register</font></a></h2>

              <form action="register.do" class="p-5 bg-white" method="post">
             
              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Username</label> 
                  <input type="text"  class="form-control" name="username">
                </div>
              </div>
                
                <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Email Address</label> 
                  <input type="email" id="email" class="form-control" name="email">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Password</label> 
                  <input type="password" id="subject" class="form-control" name="password">
                </div>
              </div>

               <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Mobile Number</label> 
                  <input type="text" id="phoneno" class="form-control" name="mobile">
                </div>
              </div>
               <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Semester</label> 
                  <select class="form-control" name="semester">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
             </select><br>
                </div>
              </div>
               <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Branch</label> 
                  <select class="form-control" name="branch">
                <option value="CE">Computer Engineering</option>
                <option value="IT">Information Technology</option>
                <option value="ME">Mechanical Engineering</option>
                <option value="NT">Nano Technology</option>
                <option value="EC">Electronics & Communication</option>
                <option value="EE">Electrical Engineering</option>
            </select><br>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="subject">Gender</label> 
                  <div>
                   <input type="radio" name="gender" value="male" checked > Male<br/>
                   <input type="radio" name="gender" value="female"> Female<br/>
                   <input type="radio" name="gender" value="other"> Other<br/>
                </div>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          
        </div>
      </div>
    </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
Statement stmt = con.createStatement();
                    String insert = "INSERT INTO signup VALUES ('username', 'email', 'password', mobile, semester, 'branch', 'gender')";
                    stmt.executeUpdate(insert);
                    stmt.close();
                    con.close();
                    out.println("Data is inserted.");
                    if (request.getParameter("submit") != null) {
                String username = request.getParameter("username");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String mobile = request.getParameter("mobile");
                String semester = request.getParameter("semester");
                String branch = request.getParameter("branch");
                String gender = request.getParameter("gender");
<%-- 
    Document   : signup
    Created on : Feb 18, 2020, 7:35:09 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.util.regex.Pattern" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Advanced JAVA</title>
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
        <br/><br/>
        <div class="site-section bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-7 mb-5"  data-aos="fade">

                        <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Register</font></a></h2>     
                        <form action="signup.jsp" class="p-5 bg-white" method="post">
                            <div class="row form-group">

                                <div class="col-md-12">
                                    <label class="text-black" for="email">Username</label> 
                                    <input type="text"  class="form-control" name="name">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Email Address</label> 
                                    <input type="email" id="email" class="form-control" name="email">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Password</label> 
                                    <input type="password" id="subject" class="form-control" name="pwd">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Mobile Number</label> 
                                    <input type="text" id="phoneno" class="form-control" name="mobile">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Semester</label> 
                                    <select class="form-control" name="semester">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Branch</label> 
                                    <select class="form-control" name="branch">
                                        <option value="CE">Computer Engineering</option>
                                        <option value="IT">Information Technology</option>
                                        <option value="ME">Mechanical Engineering</option>
                                        <option value="NT">Nano Technology</option>
                                        <option value="EC">Electronics & Communication</option>
                                        <option value="EE">Electrical Engineering</option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Gender</label> 
                                    <div>
                                        <input type="radio" name="gender" value="male" checked > Male<br/>
                                        <input type="radio" name="gender" value="female"> Female<br/>
                                        <input type="radio" name="gender" value="other"> Other<br/>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                                </div>
                            </div>
<%
    String name = request.getParameter("username");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String mobile = request.getParameter("mobile");
            String semester = request.getParameter("semester");
            String branch = request.getParameter("branch");
            String gender = request.getParameter("gender");
        Class.forName("com.mysql.jdbc.Driver");
    int updateQuery = 0;
 try {
        String connectionURL = "jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    Connection connection = null;
    PreparedStatement pstatement = null;
        connection = DriverManager.getConnection(connectionURL, "root", "");
        String queryString = "insert into usercontroller(name,email,pwd,mobile,semester,branch,gender) values(?,?,?,?,?,?,?)";
        pstatement = connection.prepareStatement(queryString);
        pstatement.setString(1, name);
        pstatement.setString(2, email);
        pstatement.setString(3, pwd);
        pstatement.setString(4, mobile);
        pstatement.setString(5, semester);
        pstatement.setString(6, branch);
        pstatement.setString(7, gender);
        updateQuery = pstatement.executeUpdate(); 
        pstatement.close();
        connection.close();
}
catch(Exception e){
    out.println(e);
}
 %>
        
            <div class="wrapper">
                                <h2 style="color: green">Data is inserted Successfully.</h2>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body> 
</html>


<%-- 
    Document   : signup_2
    Created on : Feb 18, 2020, 7:15:30 PM
    Author     : Sneh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SignUp using Database</title>
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
        <br/><br/>
        <div class="site-section bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-7 mb-5"  data-aos="fade">

                        <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Register</font></a></h2>     
                        <form action="register.do" class="p-5 bg-white" method="post">
                            <div class="row form-group">

                                <div class="col-md-12">
                                    <label class="text-black" for="email">Username</label> 
                                    <input type="text"  class="form-control" name="username">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Email Address</label> 
                                    <input type="email" id="email" class="form-control" name="email">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Password</label> 
                                    <input type="password" id="subject" class="form-control" name="password">
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Mobile Number</label> 
                                    <input type="text" id="phoneno" class="form-control" name="mobile">
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Semester</label> 
                                    <select class="form-control" name="semester">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Branch</label> 
                                    <select class="form-control" name="branch">
                                        <option value="CE">Computer Engineering</option>
                                        <option value="IT">Information Technology</option>
                                        <option value="ME">Mechanical Engineering</option>
                                        <option value="NT">Nano Technology</option>
                                        <option value="EC">Electronics & Communication</option>
                                        <option value="EE">Electrical Engineering</option>
                                    </select><br>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label class="text-black" for="subject">Gender</label> 
                                    <div>
                                        <input type="radio" name="gender" value="male" checked > Male<br/>
                                        <input type="radio" name="gender" value="female"> Female<br/>
                                        <input type="radio" name="gender" value="other"> Other<br/>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <input type="submit" value="Sign In" class="btn btn-primary py-2 px-4 text-white">
                                </div>
                            </div>

                            <%
                                String name = request.getParameter("username");
                                String email = request.getParameter("email");
                                String pwd = request.getParameter("pwd");
                                String mobile = request.getParameter("mobile");
                                String semester = request.getParameter("semester");
                                String branch = request.getParameter("branch");
                                String gender = request.getParameter("gender");
                                String message = new String();
                                int length = name.length();
                                if (length >= 6 && length <= 20) {
                                    message += "Username must be in between 6 to 20<br/>";
                                }
                                int a = 0, b = 0, c = 0;
                                for (int i = 0; i < pwd.length(); i++) {
                                    if (pwd.charAt(i) >= '0' && pwd.charAt(i) <= '9') {
                                        a = 1;
                                    }
                                    if (pwd.charAt(i) >= 'A' && pwd.charAt(i) <= 'Z') {
                                        b = 1;
                                    }
                                    if ((pwd.charAt(i) >= 33 && pwd.charAt(i) <= 47) || (pwd.charAt(i) >= 58 && pwd.charAt(i) <= 64)) {
                                        c = 1;
                                    }
                                }
                                if (a == 0) {
                                    message += "Password must contain atleast one digit.<br/>";
                                }
                                if (b == 0) {
                                    message += "Password must conatin atleast one uppercase letter.<br/>";
                                }
                                if (c == 0) {
                                    message += "Password must contain atleast one special character,<br/>";
                                }

                                if (semester.length() == 0) {
                                    message += "Semester isn't selected.<br/>";
                                }
                                if (branch.length() == 0) {
                                    message += "Branch isn't selected.<br/>";
                                }
                                int fc = email.codePointAt(0);
                                if (!((fc >= 65 && fc <= 90) || (fc >= 97 && fc <= 122) || (fc >= 48 && fc <= 57))) {
                                    message += "Email dorsn't start with a-z, A-Z or 0-9.<br/>";
                                }
                                String emailParts[] = email.split("@");
                                if (emailParts.length > 2) {
                                    message += "Email must contain only one @ sign.<br/>";
                                }
                                if (!email.contains("@")) {
                                    message += "Email must required atleast one @.<br/>";
                                }
                                int d = 1;
                                for (int i = 1; i < email.length(); i++) {
                                    if (!((email.charAt(i) >= 64 && email.charAt(i) <= 90) || (email.charAt(i) >= 91 && email.charAt(i) <= 122) || (email.charAt(i) >= 48 && email.charAt(i) <= 57) || (email.charAt(i) >= 33 && email.charAt(i) <= 47))) {
                                        d = 0;
                                    }
                                }

                                if (d == 0) {
                                    message += "Email must contain a-z, A-Z, 0-9 and also special characters.<br/>";
                                }

                                if (mobile.length() <= 9 || mobile.length() >= 11) {
                                    message += "Phone number isn't valid.<br/>";
                                }

                                if (gender == null) {
                                    message += "Gender isn't selected.<br/>";
                                }

                                if (message.length() != 0) {
                                    out.println("<h1 style='color:red;'>SignUp Failed!</h1><br/>");
                                    out.println("<p>" + message + "</p1><br/>");
                                    out.println("<a href='signup.jsp'>Try Again!</a><br/>");
                                } else {
                                    out.println("<h1 style='color:green;'>SignUp Successfull!</h1><br/>");
                                    out.println("<h2>Welcome " + name + " ! </h2><br/>");
                                    out.println("Go To <a href='index.jsp'>Home Page</a>");
                                }
                                String connectionURL = "jdbc:mysql://localhost:3306/signup?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                                Connection connection = null;
                                PreparedStatement pstatement = null;
                                int updateQuery = 0;
                                if (name != null && email != null && pwd != null && mobile != null && semester != null && branch != null && gender != null) {
                                    if (name != "" && email != "" && pwd != "" && mobile != "" && semester != "" && branch != "" && gender != "") {
                                        try {
                                            Class.forName("com.mysql.cj.jdbc.Driver");
                                            connection = DriverManager.getConnection(connectionURL, "root", "");
                                            String queryString = "insert into usercontroller(name,email,pwd,mobile,semester,branch,gender) values(?,?,?,?,?,?,?)";
                                            pstatement = connection.prepareStatement(queryString);
                                            pstatement.setString(1, name);
                                            pstatement.setString(2, email);
                                            pstatement.setString(3, pwd);
                                            pstatement.setString(4, mobile);
                                            pstatement.setString(5, semester);
                                            pstatement.setString(6, branch);
                                            pstatement.setString(7, gender);
                                            updateQuery = pstatement.executeUpdate();
                                        } catch (ClassNotFoundException | SQLException e) {
                                        }
                            %>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/jquery.countdown.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/bootstrap-datepicker.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/rangeslider.min.js"></script>

        <script src="js/main.js"></script>

    </body>
</html>
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
  
      <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
              <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                <li class="has-children">
                  <a href="#"> <font color="black"> Assignments </font> </a>
                  <ul class="dropdown">
                    <li class="has-children">
                  <a href="#">Assignment 1</a>
                  <ul class="dropdown">
                    <li><a href="register.html">Register</a></li>
                    <li><a href="login.html">Login</a></li>
                    <li><a href="table.html">Table</a></li>
                    <li><a href="counter.html">Count Visitors</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 2</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 3</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                    <li class="has-children">
                  <a href="#">Assignment 4</a>
                  <ul class="dropdown">
                    <li><a href="#">Practical 1</a></li>
                    <li><a href="#">Practical 2</a></li>
                    <li><a href="#">Practical 3</a></li>
                    <li><a href="#">Practical 4</a></li>
                  </ul>
                </li>
                  </ul>
                </li>
                <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>
  
   <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">

              <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Table Generator</font></a></h2>

            <form action="tablegenerator.do" class="p-5 bg-white">
             
              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Enter a number</label> 
                  <input name="number" type="text" id="user" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input name="generate"  type="submit" value="Generate" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          
        </div>
      </div>
    </div>

    
   

    
    

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<%-- 
    Document   : TempratureController
    Created on : Jan 20, 2020, 12:24:51 PM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
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

        <header class="site-navbar container py-0 " role="banner">

            <!-- <div class="container"> -->
            <div class="row align-items-center">

                <div class="col-6 col-xl-2">
                    <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0"><font color="black">SNEH PATEL</font></a></h1>
                </div>
                <div class="col-12 col-md-10 d-none d-xl-block">
                    <nav class="site-navigation position-relative text-right" role="navigation">

                        <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                            <li class="active"><a href="index.html"> <font color="black"> Home </font> </a></li>
                            <li class="has-children">
                                <a href="#"> <font color="black"> Assignments </font> </a>
                                <ul class="dropdown">
                                    <li class="has-children">
                                        <a href="#">Assignment 1</a>
                                        <ul class="dropdown">
                                            <li><a href="register.html">Register</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="table.html">Table</a></li>
                                            <li><a href="counter.html">Count Visitors</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Assignment 2</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Practical 1</a></li>
                                            <li><a href="#">Practical 2</a></li>
                                            <li><a href="#">Practical 3</a></li>
                                            <li><a href="#">Practical 4</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Assignment 3</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Practical 1</a></li>
                                            <li><a href="#">Practical 2</a></li>
                                            <li><a href="#">Practical 3</a></li>
                                            <li><a href="#">Practical 4</a></li>
                                        </ul>
                                    </li>
                                    <li class="has-children">
                                        <a href="#">Assignment 4</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Practical 1</a></li>
                                            <li><a href="#">Practical 2</a></li>
                                            <li><a href="#">Practical 3</a></li>
                                            <li><a href="#">Practical 4</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li class="mr-5"><a href="contact.html"><font color="black">Contact</font></a></li>

                            <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span> <font color = "black">Log In </font></a></li>

                            <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded"><font color="black">Register</font></span></a></li>
                        </ul>
                    </nav>
                </div>


                <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
                    <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
                </div>

            </div>
            <!-- </div> -->
            <%  double res = 0;
                if (request.getParameter("number") != null) {
                    double number = Double.parseDouble(request.getParameter("number"));
                    res = (((number - 32) * 5) / 9);
                }
            %>

        </header>

        <div class="site-section bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-7 mb-5"  data-aos="fade">

                        <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Temprature Converter</font></a></h2>
                                <%!
                                    double ferenhit, celcius;
                                %>
                        <div class="site-section bg-light">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-md-7 mb-5"  data-aos="fade" >

                                        <h2 class="mb-5 text-black">Converter</h2>

                                        <form action="tempratureController.jsp" method="post">
                                            <div class="form-group">
                                                <input type="text" name="temprature" class="form-control" id="number" placeholder="Degree Celsius"/>

                                            </div>
                                            <div class="form-group">
                                                <input type="text" value="<%= ferenhit%>" class="form-control" id="number"/>
                                                <div class="validation"></div>
                                            </div>
                                            <div class="d-none d-lg-block" class="text-center">
                                                <button type="submit" name="convert" class="btn btn-primary py-2 px-4 text-white">Convert to Fahrenheit</button>
                                            </div>

                                        </form>
                                        <table>
                                            <%
                                                if (request.getParameter("temprature") != null) {
                                                    double ferenhit = 0, celcius = 0;
                                                    celcius = Double.parseDouble(request.getParameter("temprature"));
                                                    ferenhit = (celcius * 9 / 5) + 32;
                                                    out.println("Some Of The Other Conversation Done.");
                                                    String conversion = "<br/>" + "Degree Celcius = " + celcius + "<br/>" +"Converted To Farenheit  = " + ferenhit;
                                                    if (application.getAttribute("history") != null) {
                                                        conversion = application.getAttribute("history") + conversion;
                                                    }
                                                    application.setAttribute("history", conversion);
                                            %>
                                            <tr>

                                                <%
                                                    out.print(conversion + "</br>");
                                                %>

                                            </tr>
                                            <%
                                                }
                                            %>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>







                        <script src="js/jquery-3.3.1.min.js"></script>
                        <script src="js/jquery-migrate-3.0.1.min.js"></script>
                        <script src="js/jquery-ui.js"></script>
                        <script src="js/popper.min.js"></script>
                        <script src="js/bootstrap.min.js"></script>
                        <script src="js/owl.carousel.min.js"></script>
                        <script src="js/jquery.stellar.min.js"></script>
                        <script src="js/jquery.countdown.min.js"></script>
                        <script src="js/jquery.magnific-popup.min.js"></script>
                        <script src="js/bootstrap-datepicker.min.js"></script>
                        <script src="js/aos.js"></script>
                        <script src="js/rangeslider.min.js"></script>

                        <script src="js/main.js"></script>

                        </body>
                    </html>
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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">DirectoryAds</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="listings.html">Ads</a></li>
                <li class="has-children">
                  <a href="about.html">About</a>
                  <ul class="dropdown">
                    <li><a href="#">The Company</a></li>
                    <li><a href="#">The Leadership</a></li>
                    <li><a href="#">Philosophy</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li class="mr-5"><a href="contact.html">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span>Log In</a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded">Register</span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>About Us</h1>
                <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  


    <div class="site-section">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <img src="images/hero_2.jpg" alt="Image" class="img-fluid rounded">
          </div>
          <div class="col-md-5 ml-auto">
            <h2 class="text-primary mb-3">Why DirectoryAds</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam voluptates a explicabo delectus sed labore dolor enim optio odio at!</p>
            <p class="mb-4">Adipisci dolore reprehenderit est et assumenda veritatis, ex voluptate odio consequuntur quo ipsa accusamus dicta laborum exercitationem aspernatur reiciendis perspiciatis!</p>

            <ul class="ul-check list-unstyled primary">
              <li>Adipisci dolore reprehenderit</li>
              <li>Accusamus dicta laborum</li>
              <li>Delectus sed labore</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section"  data-aos="fade">
      <div class="container">
        
        
        <div class="row  mb-5">
          <div class="col-12">
            <img src="images/img_2.jpg" alt="Image" class="img-fluid mb-5">
          </div>
        </div>
        <div class="row mb-5">

          <div class="col-md-4 ml-auto">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam eveniet laudantium dignissimos atque labore excepturi perspiciatis ut fugit eius itaque iste quibusdam dolore consectetur reprehenderit. Illum molestiae nemo culpa optio.</p>
            <p><a href="#" class="">Read More</a></p>
          </div>
          <div class="col-md-4">
            <p>Similique neque facere cum! Et esse natus qui fugiat temporibus voluptate debitis similique eos illum pariatur suscipit placeat omnis perferendis ab enim quis eligendi minima explicabo aperiam. Eaque minus itaque?</p>
            <p><a href="#" class="">Read More</a></p>
          </div>
        </div>

        <div class="row mb-5 mt-5">
          <div class="col-md-4 text-left border-primary">
            <h2 class="font-weight-light text-primary pb-3">Our Team</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <img src="images/person_1.jpg" alt="Image" class="img-fluid mb-3">
            <h3 class="h4">Susan Horton</h3>
            <p class="caption mb-3 text-primary">Founder</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum facilis, sint libero commodi tenetur ducimus accusantium inventore.</p>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-3">
            <h3 class="h4">Jonathan Kennedy</h3>
            <p class="caption mb-3 text-primary">Founder</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam voluptas autem qui alias officia eligendi, nam in.</p>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-3">
            <h3 class="h4">Gordon Meyer</h3>
            <p class="caption mb-3 text-primary">Lead Developer</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Tempore animi quam, est vero. Omnis sunt, totam qui!</p>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <img src="images/person_4.jpg" alt="Image" class="img-fluid mb-3">
            <h3 class="h4">Doug Hale Kennedy</h3>
            <p class="caption mb-3 text-primary">ProjectManager</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vitae exercitationem voluptatum, laboriosam unde ipsam modi iusto, numquam?</p>
          </div>
        </div>

      </div>
    </div>
  

    <div class="site-section bg-light">
      <div class="container">

        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Testimonials</h2>
          </div>
        </div>

        <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-3">
                <p>John Smith</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-3">
                <p>Christine Aguilar</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_4.jpg" alt="Image" class="img-fluid mb-3">
                <p>Robert Spears</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_5.jpg" alt="Image" class="img-fluid mb-3">
                <p>Bruce Rogers</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

        </div>
      </div>
    </div>
   

    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<%-- 
    Document   : addproductdb
    Created on : Feb 21, 2020, 10:52:41 AM
    Author     : Sneh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="com.vvp.web.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Product</title>
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
        <form method="post">
            <p style="color: blueviolet; margin-left: 38%;">Product Name : &nbsp;&nbsp;<input type="text" name="pname"/></p><br/><br/>
            <p style="color: blueviolet; margin-left: 38%;">Product Description : &nbsp;&nbsp;<textarea name="pdec"></textarea></p><br/><br/>
            <p style="color: blueviolet; margin-left: 38%;">Product Price : &nbsp;&nbsp;<input type="text" name="price"/></p><br/><br/>
            <p style="color: blueviolet; margin-left: 38%;">Product Stock : &nbsp;&nbsp;<input type="text" name="stock"/></p><br/><br/>
            <input style="color:blue; margin-left: 50%;" type="submit" name="add" value="Add"/>
        </form>
        <%
            if (request.getParameter("add") != null) {
                String name = request.getParameter("pname");
                String description = request.getParameter("pdec");
                float price = Float.parseFloat(request.getParameter("price"));
                int stock = Integer.parseInt(request.getParameter("stock"));

                try {
                    String connectionURL = "jdbc:mysql://localhost:3306/login?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = null;
                    connection = DriverManager.getConnection(connectionURL, "root", "");
                    PreparedStatement pst = connection.prepareStatement("insert into product (pname,pdesc,price,stock)" + "values(?,?,?,?)");
                    pst.setString(1, name);
                    pst.setString(2, description);
                    pst.setFloat(3, price);
                    pst.setInt(4, stock);
                    pst.execute();
                } catch (Exception e) {
                    out.println(e);
                }
        %>
        <br/><br/>
            <h1 style="color: red">Product Added Successfully.</h1>
        <%
            }
        %>
    </body>
</html>

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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">DirectoryAds</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="listings.html">Ads</a></li>
                <li class="has-children">
                  <a href="about.html">About</a>
                  <ul class="dropdown">
                    <li><a href="#">The Company</a></li>
                    <li><a href="#">The Leadership</a></li>
                    <li><a href="#">Philosophy</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li class="mr-5"><a href="contact.html">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span>Log In</a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded">Register</span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>Blog</h1>
                <p class="mb-0">Choose product you want</p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">

            <div class="row mb-3 align-items-stretch">

              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blog-single.html"><img src="images/img_1.jpg" alt="Image" class="img-fluid rounded"></a>
                  <h2 class="font-size-regular"><a href="blog-single.html" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blog-single.html"><img src="images/img_2.jpg" alt="Image" class="img-fluid rounded"></a>
                  <h2 class="font-size-regular"><a href="blog-single.html" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blog-single.html"><img src="images/img_3.jpg" alt="Image" class="img-fluid rounded"></a>
                  <h2 class="font-size-regular"><a href="blog-single.html" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div>
              </div>


              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blog-single.html"><img src="images/img_4.jpg" alt="Image" class="img-fluid rounded"></a>
                  <h2 class="font-size-regular"><a href="blog-single.html" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blog-single.html"><img src="images/img_2.jpg" alt="Image" class="img-fluid rounded"></a>
                  <h2 class="font-size-regular"><a href="blog-single.html" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div> 
              </div>
              <div class="col-md-6 col-lg-6 mb-4 mb-lg-4">
                <div class="h-entry">
                  <a href="blog-single.html"><img src="images/img_3.jpg" alt="Image" class="img-fluid rounded"></a>
                  <h2 class="font-size-regular"><a href="blog-single.html" class="text-black">Many People Selling Online</a></h2>
                  <div class="meta mb-3">by Mark Spiker<span class="mx-1">&bullet;</span> Jan 18, 2019 <span class="mx-1">&bullet;</span> <a href="#">News</a></div>
                  <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus eligendi nobis ea maiores sapiente veritatis reprehenderit suscipit quaerat rerum voluptatibus a eius.</p>
                </div>
              </div>

              
            </div>


            <div class="col-12 text-center mt-5">
              <p class="custom-pagination">
                <span>1</span>
                <a href="#">2</a>
                <a href="#">3</a>
                <span>...</span>
                <a href="#">20</a>
              </p>
            </div>

          </div>
          <div class="col-md-3 ml-auto">
            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Search</h3>
              <form action="#" method="post">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="Search keyword and hit enter...">
                </div>
              </form>
            </div>

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Popular Posts</h3>
              <ul class="list-unstyled">
                <li class="mb-2"><a href="#">Lorem ipsum dolor sit amet</a></li>
                <li class="mb-2"><a href="#">Quaerat rerum voluptatibus veritatis</a></li>
                <li class="mb-2"><a href="#">Maiores sapiente veritatis reprehenderit</a></li>
                <li class="mb-2"><a href="#">Natus eligendi nobis</a></li>
              </ul>
            </div>

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Recent Comments</h3>
              <ul class="list-unstyled">
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Lorem ipsum dolor sit amet</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Quaerat rerum voluptatibus veritatis</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Maiores sapiente veritatis reprehenderit</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Natus eligendi nobis</a></li>
              </ul>
            </div>

          </div>

        </div>
      </div>
    </div>

    
    
    <div class="site-section bg-light">
      <div class="container">

        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Testimonials</h2>
          </div>
        </div>

        <div class="slide-one-item home-slider owl-carousel">
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_3.jpg" alt="Image" class="img-fluid mb-3">
                <p>John Smith</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>
          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_2.jpg" alt="Image" class="img-fluid mb-3">
                <p>Christine Aguilar</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_4.jpg" alt="Image" class="img-fluid mb-3">
                <p>Robert Spears</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

          <div>
            <div class="testimonial">
              <figure class="mb-4">
                <img src="images/person_5.jpg" alt="Image" class="img-fluid mb-3">
                <p>Bruce Rogers</p>
              </figure>
              <blockquote>
                <p>&ldquo;Lorem ipsum dolor sit amet consectetur adipisicing elit. Consectetur unde reprehenderit aperiam quaerat fugiat repudiandae explicabo animi minima fuga beatae illum eligendi incidunt consequatur. Amet dolores excepturi earum unde iusto.&rdquo;</p>
              </blockquote>
            </div>
          </div>

        </div>
      </div>
    </div>


    <div class="newsletter bg-primary py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <h2>Newsletter</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
          <div class="col-md-6">
            
            <form class="d-flex">
              <input type="text" class="form-control" placeholder="Email">
              <input type="submit" value="Subscribe" class="btn btn-white"> 
            </form>
          </div>
        </div>
      </div>
    </div>
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">DirectoryAds</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="listings.html">Ads</a></li>
                <li class="has-children">
                  <a href="about.html">About</a>
                  <ul class="dropdown">
                    <li><a href="#">The Company</a></li>
                    <li><a href="#">The Leadership</a></li>
                    <li><a href="#">Philosophy</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li class="mr-5"><a href="contact.html">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span>Log In</a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded">Register</span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>Many People Selling Online</h1>
                <p class="mb-0">April 24th, 2019 <span class="mx-2">&bullet;</span> by <a href="#" class="text-white">Colorlib</a></p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">

            <figure>
              <img src="images/img_2.jpg" alt="Image" class="img-fluid">
              <figcaption>This is an image</figcaption>
            </figure>

            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil ratione dolores expedita id repudiandae nostrum aut, impedit repellat nam veritatis, pariatur facere reprehenderit alias atque molestias ipsum officia asperiores possimus eos, quis nemo hic. Autem molestias dolorum blanditiis quibusdam culpa nobis quam, soluta quasi quis, fugiat delectus pariatur, eos quae.</p>
            <p>Sequi mollitia architecto accusamus laborum nemo harum pariatur, earum magnam nihil consequuntur similique quas quae inventore dolorem ut quibusdam aliquam vel unde at explicabo! Esse saepe cupiditate nobis rerum soluta error alias explicabo reprehenderit pariatur! Architecto minus aliquid reiciendis iure, optio officia at a autem non blanditiis deserunt in labore.</p>
            <p>Quia mollitia, at labore eveniet perspiciatis accusantium molestiae tempore quos placeat quam laudantium tenetur ut distinctio maiores minus beatae et vero suscipit, excepturi veritatis veniam. Aliquam eaque laborum obcaecati. Perferendis, assumenda vel facilis fuga libero tempora reprehenderit dolorum corrupti eligendi ut rem aut magni eius possimus sed! Culpa, libero, eius.</p>
            <p>Optio repellat libero aliquam delectus ipsa officia voluptatibus repellendus fugiat earum? Nam, sunt? Dolor at ullam aperiam iusto deserunt, nulla libero illo veniam totam tenetur inventore voluptates nemo atque, nam. Voluptas dignissimos minus voluptatem molestiae? Nihil hic, consequuntur perspiciatis sapiente, doloremque impedit ipsa doloribus sed saepe ratione dicta voluptatibus at!</p>
            <p>Obcaecati voluptatem ea vitae id doloremque hic. Perspiciatis quia libero consectetur unde ullam, veritatis voluptate laborum enim quos, atque quasi animi sapiente beatae inventore obcaecati, esse rem ducimus quam officia ipsum temporibus repellendus facere. Explicabo delectus, magni eum voluptatibus nemo totam reprehenderit dolores deserunt rerum suscipit aperiam culpa, cupiditate nam.</p>


            <div class="pt-5">
              <p>Categories:  <a href="#">Food</a>, <a href="#">Travel</a>  Tags: <a href="#">#manila</a>, <a href="#">#asia</a></p>
            </div>


            <div class="pt-5">
              <h3 class="mb-5">6 Comments</h3>
              <ul class="comment-list">
                <li class="comment">
                  <div class="vcard">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply rounded">Reply</a></p>
                  </div>
                </li>

                <li class="comment">
                  <div class="vcard">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply rounded">Reply</a></p>
                  </div>

                  <ul class="children">
                    <li class="comment">
                      <div class="vcard">
                        <img src="images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>Jean Doe</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply rounded">Reply</a></p>
                      </div>


                      <ul class="children">
                        <li class="comment">
                          <div class="vcard">
                            <img src="images/person_1.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>Jean Doe</h3>
                            <div class="meta">January 9, 2018 at 2:21pm</div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                            <p><a href="#" class="reply rounded">Reply</a></p>
                          </div>

                            <ul class="children">
                              <li class="comment">
                                <div class="vcard">
                                  <img src="images/person_1.jpg" alt="Image placeholder">
                                </div>
                                <div class="comment-body">
                                  <h3>Jean Doe</h3>
                                  <div class="meta">January 9, 2018 at 2:21pm</div>
                                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                  <p><a href="#" class="reply rounded">Reply</a></p>
                                </div>
                              </li>
                            </ul>
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>

                <li class="comment">
                  <div class="vcard">
                    <img src="images/person_1.jpg" alt="Image placeholder">
                  </div>
                  <div class="comment-body">
                    <h3>Jean Doe</h3>
                    <div class="meta">January 9, 2018 at 2:21pm</div>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                    <p><a href="#" class="reply rounded">Reply</a></p>
                  </div>
                </li>
              </ul>
              <!-- END comment-list -->
              
              <div class="comment-form-wrap pt-5">
                <h3 class="mb-5">Leave a comment</h3>
                <form action="#" class="p-5 bg-light">
                  <div class="form-group">
                    <label for="name">Name *</label>
                    <input type="text" class="form-control" id="name">
                  </div>
                  <div class="form-group">
                    <label for="email">Email *</label>
                    <input type="email" class="form-control" id="email">
                  </div>
                  <div class="form-group">
                    <label for="website">Website</label>
                    <input type="url" class="form-control" id="website">
                  </div>

                  <div class="form-group">
                    <label for="message">Message</label>
                    <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                  </div>
                  <div class="form-group">
                    <input type="submit" value="Post Comment" class="btn btn-primary">
                  </div>

                </form>
              </div>
            </div>

          </div>


          <div class="col-md-3 ml-auto">
            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Search</h3>
              <form action="#" method="post">
                <div class="form-group d-flex">
                  <input type="text" class="form-control" placeholder="Search keyword and hit enter...">
                </div>
              </form>
            </div>

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Popular Posts</h3>
              <ul class="list-unstyled">
                <li class="mb-2"><a href="#">Lorem ipsum dolor sit amet</a></li>
                <li class="mb-2"><a href="#">Quaerat rerum voluptatibus veritatis</a></li>
                <li class="mb-2"><a href="#">Maiores sapiente veritatis reprehenderit</a></li>
                <li class="mb-2"><a href="#">Natus eligendi nobis</a></li>
              </ul>
            </div>

            <div class="mb-5">
              <h3 class="h5 text-black mb-3">Recent Comments</h3>
              <ul class="list-unstyled">
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Lorem ipsum dolor sit amet</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Quaerat rerum voluptatibus veritatis</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Maiores sapiente veritatis reprehenderit</a></li>
                <li class="mb-2"><a href="#">Joefrey</a> <em>in</em> <a href="#">Natus eligendi nobis</a></li>
              </ul>
            </div>

          </div>

        </div>
      </div>
    </div>

    
    
    

    <div class="newsletter bg-primary py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <h2>Newsletter</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
          <div class="col-md-6">
            
            <form class="d-flex">
              <input type="text" class="form-control" placeholder="Email">
              <input type="submit" value="Subscribe" class="btn btn-white"> 
            </form>
          </div>
        </div>
      </div>
    </div>
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Basic Calculator</title>
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
      <%!   
        double add(double e, double f)
        {
            return e+f;
        }
        double sub(double e, double f)
        {
            return e-f;
        }
        double mul(double e, double f)
        {
            return e*f;
        }
        double div(double e, double f)
        {
            return e/f;
        }
    %>
    
    <%  
        double res = 0;
        if(request.getParameter("operation")!= null)
        {
            char opcode;
            double a = Double.parseDouble(request.getParameter("n1"));
            double b = Double.parseDouble(request.getParameter("n2"));
            opcode = request.getParameter("operation").charAt(0);
            switch(opcode)
            {
                case '+' : res = add(a,b);
                           break;
                case '-' : res= sub(a,b);
                           break;
                case '*' : res = mul(a,b);
                           break;
                case '/' : res = div(a,b);
                           break;
            }
        }  
    %>
      
    <div class="site-section bg-light">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7 mb-5"  data-aos="fade">

              <h2 class="mb-5 text-black"><a href="index.html"><font color="black">Basic Calculator</font></a></h2>

            <form action="" class="p-5 bg-white" method="get">
             
              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black">Number - 1</label> 
                  <input name="n1" type="text" id="n1" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">Number - 2</label> 
                  <input name="n2" type="text" id="n2" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input name="operation" type="submit" value="+" class="btn btn-primary py-2 px-4 text-white">
                  <input name="operation" type="submit" value="-" class="btn btn-primary py-2 px-4 text-white">
                  <input name="operation" type="submit" value="*" class="btn btn-primary py-2 px-4 text-white">
                  <input name="operation" type="submit" value="/" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>
                
                <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="output">Output</label> 
                  <input name="out" type="text" class="form-control" value="<%out.println(res);%>">
                </div>
              </div>
                
  
            </form>
          </div>
          
        </div>
      </div>
    </div>
           
  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<%-- 
    Document   : checkout
    Created on : Feb 14, 2020, 6:35:30 PM
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
                <td>Sub Total</td>
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
                    double sum=0;
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
                            <td><%out.println((cartItems.get(id)*p.pPrice));%></td>
                        </tr>
                        
                        <%
                            sum += (cartItems.get(id)*p.pPrice);
                    }
                    %>
                    <tr>
                    <td colspan="4"><h4>Grand Total</h4></td>
                        <td><%out.println(sum);%></td>
                    </tr>
                    <%
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
        <div class="wrapper">
            <br/><br/>
        <a href="productController.jsp" ><button>Payment Methods</button></a>
        </div>
    </body>
</html>

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
  
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar container py-0 " role="banner">

      <!-- <div class="container"> -->
        <div class="row align-items-center">
          
          <div class="col-6 col-xl-2">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-white mb-0">DirectoryAds</a></h1>
          </div>
          <div class="col-12 col-md-10 d-none d-xl-block">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block">
                <li class="active"><a href="index.html">Home</a></li>
                <li><a href="listings.html">Ads</a></li>
                <li class="has-children">
                  <a href="about.html">About</a>
                  <ul class="dropdown">
                    <li><a href="#">The Company</a></li>
                    <li><a href="#">The Leadership</a></li>
                    <li><a href="#">Philosophy</a></li>
                    <li><a href="#">Careers</a></li>
                  </ul>
                </li>
                <li><a href="blog.html">Blog</a></li>
                <li class="mr-5"><a href="contact.html">Contact</a></li>

                <li class="ml-xl-3 login"><a href="login.html"><span class="border-left pl-xl-4"></span>Log In</a></li>

                <li><a href="login.html" class="cta"><span class="bg-primary text-white rounded">Register</span></a></li>
              </ul>
            </nav>
          </div>


          <div class="d-inline-block d-xl-none ml-auto py-3 col-6 text-right" style="position: relative; top: 3px;">
            <a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a>
          </div>

        </div>
      <!-- </div> -->
      
    </header>

  
    <div class="site-blocks-cover inner-page-cover overlay" style="background-image: url(images/hero_2.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center justify-content-center text-center">

          <div class="col-md-10" data-aos="fade-up" data-aos-delay="400">
            
            
            <div class="row justify-content-center mt-5">
              <div class="col-md-8 text-center">
                <h1>Contact Us</h1>
                <p class="mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit</p>
              </div>
            </div>

            
          </div>
        </div>
      </div>
    </div>  


    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-md-7 mb-5"  data-aos="fade">

            

            <form action="#" class="p-5 bg-white">
             

              <div class="row form-group">
                <div class="col-md-6 mb-3 mb-md-0">
                  <label class="text-black" for="fname">First Name</label>
                  <input type="text" id="fname" class="form-control">
                </div>
                <div class="col-md-6">
                  <label class="text-black" for="lname">Last Name</label>
                  <input type="text" id="lname" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="email">Email</label> 
                  <input type="email" id="email" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                
                <div class="col-md-12">
                  <label class="text-black" for="subject">Subject</label> 
                  <input type="subject" id="subject" class="form-control">
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black" for="message">Message</label> 
                  <textarea name="message" id="message" cols="30" rows="7" class="form-control" placeholder="Write your notes or questions here..."></textarea>
                </div>
              </div>

              <div class="row form-group">
                <div class="col-md-12">
                  <input type="submit" value="Send Message" class="btn btn-primary py-2 px-4 text-white">
                </div>
              </div>

  
            </form>
          </div>
          <div class="col-md-5"  data-aos="fade" data-aos-delay="100">
            
            <div class="p-4 mb-3 bg-white">
              <p class="mb-0 font-weight-bold">Address</p>
              <p class="mb-4">203 Fake St. Mountain View, San Francisco, California, USA</p>

              <p class="mb-0 font-weight-bold">Phone</p>
              <p class="mb-4"><a href="#">+1 232 3235 324</a></p>

              <p class="mb-0 font-weight-bold">Email Address</p>
              <p class="mb-0"><a href="#">youremail@domain.com</a></p>

            </div>
            
            <div class="p-4 mb-3 bg-white">
              <h3 class="h5 text-black mb-3">More Info</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa ad iure porro mollitia architecto hic consequuntur. Distinctio nisi perferendis dolore, ipsa consectetur? Fugiat quaerat eos qui, libero neque sed nulla.</p>
              <p><a href="#" class="btn btn-primary px-4 py-2 text-white">Learn More</a></p>
            </div>

          </div>
        </div>
      </div>
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center border-primary">
            <h2 class="font-weight-light text-primary">Frequently Ask Question</h2>
            <p class="color-black-opacity-5">Lorem Ipsum Dolor Sit Amet</p>
          </div>
        </div>


        <div class="row justify-content-center">
          <div class="col-8">
            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-1" role="button" aria-expanded="false" aria-controls="collapse-1" class="accordion-item h5 d-block mb-0">How to list my item?</a>

              <div class="collapse" id="collapse-1">
                <div class="pt-2">
                  <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.</p>
                </div>
              </div>
            </div>

            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-4" role="button" aria-expanded="false" aria-controls="collapse-4" class="accordion-item h5 d-block mb-0">Is this available in my country?</a>

              <div class="collapse" id="collapse-4">
                <div class="pt-2">
                  <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.</p>
                </div>
              </div>
            </div>

            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-2" role="button" aria-expanded="false" aria-controls="collapse-2" class="accordion-item h5 d-block mb-0">Is it free?</a>

              <div class="collapse" id="collapse-2">
                <div class="pt-2">
                  <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.</p>
                </div>
              </div>
            </div>

            <div class="border p-3 rounded mb-2">
              <a data-toggle="collapse" href="#collapse-3" role="button" aria-expanded="false" aria-controls="collapse-3" class="accordion-item h5 d-block mb-0">How the system works?</a>

              <div class="collapse" id="collapse-3">
                <div class="pt-2">
                  <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corrupti esse voluptates deleniti, ratione, suscipit quam cumque beatae, enim mollitia voluptatum velit excepturi possimus odio dolore molestiae officiis aspernatur provident praesentium.</p>
                </div>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>


    <div class="newsletter bg-primary py-5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-6">
            <h2>Newsletter</h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>
          </div>
          <div class="col-md-6">
            
            <form class="d-flex">
              <input type="text" class="form-control" placeholder="Email">
              <input type="submit" value="Subscribe" class="btn btn-white"> 
            </form>
          </div>
        </div>
      </div>
    </div>
    
   

    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-9">
            <div class="row">
              <div class="col-md-6">
                <h2 class="footer-heading mb-4">About</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Provident rerum unde possimus molestias dolorem fuga, illo quis fugiat!</p>
              </div>
              
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Navigations</h2>
                <ul class="list-unstyled">
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Services</a></li>
                  <li><a href="#">Testimonials</a></li>
                  <li><a href="#">Contact Us</a></li>
                </ul>
              </div>
              <div class="col-md-3">
                <h2 class="footer-heading mb-4">Follow Us</h2>
                <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <form action="#" method="post">
              <div class="input-group mb-3">
                <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Search products..." aria-label="Enter Email" aria-describedby="button-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary text-white" type="button" id="button-addon2">Search</button>
                </div>
              </div>
            </form>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/rangeslider.min.js"></script>

  <script src="js/main.js"></script>
    
  </body>
</html>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>TODO write content</div>
    </body>
</html>

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

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
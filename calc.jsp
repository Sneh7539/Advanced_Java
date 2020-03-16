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
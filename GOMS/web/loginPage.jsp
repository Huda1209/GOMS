<%-- 
    Document   : loginPage
    Created on : Jan 17, 2022, 10:28:43 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
   
                <header>
                    <!--- Navbar --->
                    <nav class="navbar navbar-expand-lg">
                        <div class="container">
                            <a class="navbar-brand text-white" href="index.jsp"><i class="fa fa-diamond fa-lg mr-2"></i>MyGYM4you</a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nvbCollapse" aria-controls="nvbCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="nvbCollapse">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item pl-1">
                                        <a class="nav-link" href="index.jsp"><i class="fa fa-home fa-fw mr-1"></i>Home Page</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          Contact Us
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                          <a class="dropdown-item" ><i class="fa fa-phone fa-fw mr-1"></i>019-266 2700</a>
                                          <a class="dropdown-item" href="https://www.facebook.com/luf24hr/" target="_blank"><i class="fa fa-facebook-square fa-fw mr-1"></i>Our Facebook</a>
                                          <a class="dropdown-item"><i class="fa fa-envelope fa-fw mr-1"></i>
                                            luf24hr@levelupfitness.com</a>
                                      </li>
                                    <li class="nav-item pl-1">
                                        <a class="nav-link" href="signup.jsp"><i class="fa fa-registered fa-fw mr-1"></i>Sign Up</a>
                                    </li>
                                    <li class="nav-item pl-1">
                                        <a class="nav-link" href="loginPage.jsp"><i class="fa fa-sign-in fa-fw mr-1"></i>Sign In</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <!--# Navbar #-->
                    </header>
                    </head>
                    <body class="d-flex flex-column min-vh-100">
        <div class="bg-img">
            <center>
            <div class="wrapper">
                <div class="text-center mt-4 name"> SIGN IN AS</div>
    <a href="trainerLogin.jsp"><button class="btn mt-3">TRAINER</button></a>
    <a href="custLogin.jsp"><button class="btn mt-3">CUSTOMER</button></a>
    <a href="adminLogin.jsp"><button class="btn mt-3">ADMIN</button></a>
    </div>
            </center>
            </div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0-next.1/esm/popper.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'></script>
            </body>
            <footer id="sticky-footer" class="mt-auto py-4 bg-dark text-white-50">
                <div class="container text-center">
                  <small>Copyright &copy; 2021 MyGYM4you</small>
                </div>
              </footer>
</html>

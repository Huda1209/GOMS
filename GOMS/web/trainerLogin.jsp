<%-- 
    Document   : trainerLogin
    Created on : Jan 22, 2022, 9:12:43 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.io.IOException"%>
<%@page import="goms.com.Trainer"%>
<%@page import="goms.com.trainerDAO"%>

             <%-- try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/goms","root","admin");
                
                if(request.getParameter("btn_login") != null) {
                    String dbemail, dbpassword;
                    
                    String email,password;
                    
                    email=request.getParameter("trainerID");
                    password=request.getParameter("password");
                    
                    PreparedStatement ps = null;
                    
                    ps=con.prepareStatement("select *from trainer where trainerID=? AND password=?");
                    ps.setString(1, email);
                    ps.setString(2, password);
                    
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next()) {
                        dbemail=rs.getString("trainerID");
                        dbpassword=rs.getString("password");
                    
                    if(email.equals(dbemail) && password.equals(dbpassword)) {
                        session.setAttribute("login", dbemail);
                        response.sendRedirect("trainerMain.jsp");
                        
                    }
                }
                    else {
                        request.setAttribute("errorMsg", "Invalid email or password!");
                    }
                    con.close();
            }
            }
            catch (Exception e) {
                out.println(e);
            }
            --%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">

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

    <body style="font-family: 'Poppins', sans-serif;">
        <script>
                    function validate() {
                        var email = document.myform.trainerID;
                        var password = document.myform.password;
                        
                        if(email.value == null || email.value == "") {
                            window.alert("Please enter your email");
                            email.style.background;
                            email.focus();
                            return false;
                        }
                        if (password.value == null || password.value == "") {
                            window.alert("Please enter your password");
                            password.style.background = '#f08080';
                            password.focus();
                            return false;
                        }
                    }
                </script>
<div class="wrapper">
    <div class="logo"></div>
    <div class="text-center mt-4 name"> SIGN IN </div>
    <form name="myform" class="p-3 mt-3" action="processLS.jsp" method="post" onsubmit="return validate();">
        <%
                    if(request.getAttribute("errorMsg") != null) {
                        out.println(request.getAttribute("errorMsg"));
                        
                    }
                    %>
        <div class="form-field d-flex align-items-center"> <span class="fa fa-user"></span> <input type="text" name="trainerID" id="trainerID" placeholder="Your ID" required=""> </div>
        <div class="form-field d-flex align-items-center"> <span class="fa fa-key"></span> <input type="password" name="password" id="pwd" placeholder="Password" required> </div> 
        <input class="btn mt-3" name="btn_login" value="Login" type="submit">
        
    </form>
    <div class="text-center fs-6"> <a href="#">Forget password?</a> or <a href="signup.jsp">Sign up</a> </div>
</div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0-next.1/esm/popper.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'></script>
</body>
<footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50 margin-top-60%">
        <div class="container text-center">
          <small>Copyright &copy; 2021 MyGYM4you</small>
        </div>
      </footer>
</html>
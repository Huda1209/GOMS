<%-- 
    Document   : trainerMain
    Created on : Jan 22, 2022, 9:32:10 PM
    Author     : Hp
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List" %>
<%@page import="goms.com.Trainer" %>
<%@page import="goms.com.trainerDAO" %>
<jsp:useBean id="database" class="goms.com.DBConnection" scope="request"/>
<jsp:useBean id="trainerDAO" class="goms.com.trainerDAO" scope="request"/> 


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="css/recordTracking.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">

        <header>
            <!--- Navbar --->
            <nav class="navbar navbar-expand-lg">
                <div class="container">
                    <a class="navbar-brand text-white" href="trainerMain.jsp"><i class="fa fa-diamond fa-lg mr-2"></i>MyGYM4you</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nvbCollapse" aria-controls="nvbCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="nvbCollapse">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item pl-1">
                                <a class="nav-link" href="trainerMain.jsp"><i class="fa fa-home fa-fw mr-1"></i>Main Page</a>
                            </li>
                            <li class="nav-item pl-1">
                                    <a class="nav-link" href="myTrainee.jsp"><i class="fa fa-user-plus fa-fw mr-1"></i>My Trainee</a>
                                </li>
                                <li class="nav-item pl-1">
                                    <a class="nav-link" href="loginPage.jsp"><i class="fa fa-sign-out fa-fw mr-1"></i>Sign Out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!--# Navbar #-->
                </header>
    </head>
    <%
        Trainer trainer = (Trainer) request.getSession().getAttribute("trainer");
    %>
    <body class="d-flex flex-column min-vh-100">
        <div class="container" style="margin-top: 5%;">
            <div class="main-body">
                <% 
        if(session.getAttribute("login") == null || session.getAttribute("login")== " "){
                                                response.sendRedirect("trainerLogin.jsp");
                                            }
                                            %>
            
                  <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex flex-column align-items-center text-center">
                            <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="Admin" class="rounded-circle" width="150">
                            <div class="mt-3">
                              <p class="text-secondary mb-1">MyGYM4you Trainer</p>
                              <p class="text-muted font-size-sm">Kuala Terengganu, Terengganu</p>
                            </div>
                          </div>
                        </div>
                      </div>
                     
                    </div>
                     
                    <div class="col-md-8">
                      <div class="card mb-3">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                  <h6 class="mb-0">Trainer ID</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                   <input style="color:black" type="text" class="form-control" id="studName" value="<%=trainer.getTrainerID()%>" readonly>
                                </div>
                              </div>
                              <hr>
                          <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Full Name</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                              <input style="color:black" type="text" class="form-control" id="studName" value="<%=trainer.getTrainerName()%>" readonly>
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Email</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                               <input style="color:black" type="text" class="form-control" id="studName" value="<%=trainer.getEmail()%>" readonly>
                            </div>
                          </div>
                          <hr>
                          <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Password</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                                <input style="color:black" type="text" class="form-control" id="studName" value="<%=trainer.getPassword()%>" readonly>
                            </div>
                          </div>
                            <hr>
                          <div class="row">
                            <div class="col-sm-3">
                              <h6 class="mb-0">Phone</h6>
                            </div>
                            <div class="col-sm-9 text-secondary">
                               <input style="color:black" type="text" class="form-control" id="studName" value="<%=trainer.getPhone()%>" readonly>
                            </div>
                          </div>
                          
                          <hr>
                          <div class="row">
                            <div class="col-sm-12">
                              <a class="btn btn-info " target="__blank" href="editProfileTrainer.jsp?ID=<%=trainer.getID()%>">Edit</a>
                            </div>
                          </div>
                        </div>
                      </div>
                      </div></div></div></div>
                    

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

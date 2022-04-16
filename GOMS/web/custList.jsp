<%-- 
    Document   : custList
    Created on : Jan 21, 2022, 8:18:10 PM
    Author     : Hp
--%>

<%@page import="goms.com.customerDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*,goms.com.Customer" %>
<jsp:useBean id="database" class="goms.com.DBConnection" scope="request"/>
<jsp:useBean id="customerDAO" class="goms.com.customerDAO" scope="request"/>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/custList.css">

            <header>
                <!--- Navbar --->
                <nav class="navbar navbar-expand-lg">
                    <div class="container">
                        <a class="navbar-brand text-white" href="adminMain.html"><i class="fa fa-diamond fa-lg mr-2"></i>MyGYM4you</a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nvbCollapse" aria-controls="nvbCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="nvbCollapse">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item pl-1">
                                    <a class="nav-link" href="adminMain.jsp"><i class="fa fa-home fa-fw mr-1"></i>Main Page</a>
                                </li>
                                <li class="nav-item pl-1">
                                    <a class="nav-link" href="trainerList.jsp"><i class="fa fa-user-plus fa-fw mr-1"></i>Trainer List</a>
                                </li>
                                <li class="nav-item pl-1">
                                    <a class="nav-link" href="custList.jsp"><i class="fa fa-users fa-fw mr-1"></i>Customer List</a>
                                </li>
                                <li class="nav-item pl-1">
                                    <a class="nav-link" href="equipmentList.jsp"><i class="fa fa-life-ring fa-fw mr-1"></i>Equipment List</a>
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
    <body class="d-flex flex-column min-vh-100">
    <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="header-title pb-3 mt-0">Trainee</h5>
                            <div class="table-responsive">
                                <table class="table table-hover mb-0">
                                    <thead>
                                        <tr class="align-self-center">
                                            <th>Trainee ID</th>
                                            <th>Membership ID</th>
                                            <th>Trainee Name</th>
                                            <th>Email</th>
                                            <th>Phone Number</th>
                                            <th>Membership Start</th>
                                            <th>Program</th>
                                            <th>Membership Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <% 
                                                List<Customer> allCustomer = customerDAO.retrieveAllCustomer();
                                                for (int i = 0; i< allCustomer.size(); i++) {
                                                    out.print("<td>" + allCustomer.get(i).getCustID()+"</td>");
                                                    out.print("<td>" + allCustomer.get(i).getMemberID()+"</td>");
                                                    out.print("<td>" + allCustomer.get(i).getCustName()+"</td>");
                                                    out.print("<td>" + allCustomer.get(i).getEmail()+"</td>");
                                                    out.print("<td>0" + allCustomer.get(i).getPhone()+"</td>");
                                                    out.print("<td>" + allCustomer.get(i).getStartDate()+"</td>");
                                                    out.print("<td>" + allCustomer.get(i).getProgram()+"</td>");
                                                    out.print("<td><span class=\"badge badge-boxed badge-danger\">" + allCustomer.get(i).getMemberStatus()+"</span></td>");
                                                  
                                                    
                                                }
                                                database.closeConnection();
                                                %>
                                                
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <!--end table-responsive-->
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0-next.1/esm/popper.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'></script>
    </body>
    <footer class="mt-auto py-4 bg-dark text-white-50">
        <div class="container text-center">
          <small>Copyright &copy; 2021 MyGYM4you</small>
        </div>
      </footer>
    </head>

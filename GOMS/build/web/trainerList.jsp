<%-- 
    Document   : trainerList
    Created on : Jan 13, 2022, 1:40:49 AM
    Author     : Hp
--%>


<%@page import="goms.com.trainerDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.*,goms.com.Trainer" %>
<jsp:useBean id="database" class="goms.com.DBConnection" scope="request"/>
<jsp:useBean id="trainerDAO" class="goms.com.trainerDAO" scope="request"/>
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
    </head>
    <body class="d-flex flex-column min-vh-100"> 
        
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="header-title pb-3 mt-0">Trainer</h5>
                            <div class="table-responsive">
                                <table class="table table-hover mb-0">
                                    
                                    <%
                                    List<Trainer> allTrainer = trainerDAO.retrieveAllTrainer();
                                    out.print("<thead>");
                                    out.print("<tr class=\"align-self-center\">");
                                    out.print("<th>Trainer ID</th>");
                                    out.print("<th>Trainer Name</th>");
                                    out.print("<th>Email</th>");
                                    out.print("<th>Password</th>");
                                    out.print("<th>Phone Number</th>");
                                    out.print("<th>Action</th>");
                                    out.print("</tr>");
                                    out.print("</thead>");
                                    out.print("<tbody>");
                                               
                                    for (int i = 0; i< allTrainer.size(); i++) {
                                    out.print("<tr>");
                                    out.print("<td>" + allTrainer.get(i).getTrainerID()+"</td>");
                                    out.print("<td>" + allTrainer.get(i).getTrainerName()+"</td>");
                                    out.print("<td>" + allTrainer.get(i).getEmail()+"</td>");
                                    out.print("<td>" + allTrainer.get(i).getPassword()+"</td>");
                                    out.print("<td>" + allTrainer.get(i).getPhone()+"</td>");
                                    out.println("<td><a href = updateTrainer.jsp?id="
                                    + allTrainer.get(i).getID()+ "><i class='fa fa-pencil fa-fw' style='color:blueviolet'></i></a> &nbsp <a href = deleteTrainer.jsp?id="
                                    + allTrainer.get(i).getID()+ " onclick=\return confirm" + "('Are you sure?')\"><i class='fa fa-trash-o fa-fw'  style='color:red' ></i></a>"
                                    + "</td>");
                                    out.print("</tr>");
                                    }
                                    out.println("</tbody>");
                                    database.closeConnection();
        %>
    
                                </table>
                            </div>
                            <!--end table-responsive-->
                            <div class="pt-3 border-top text-right">
                                <a href="addTrainer.jsp" style="color: aliceblue;"><button type="button" id="submit" name="submit" class="btn btn-secondary">Add New</button></a>
                            </div>
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
    <footer id="sticky-footer" class="mt-auto py-4 bg-dark text-white-50">
        <div class="container text-center">
          <small>Copyright &copy; 2021 MyGYM4you</small>
        </div>
      </footer>
</html>

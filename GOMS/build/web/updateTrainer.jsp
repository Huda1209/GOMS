<%-- 
    Document   : updateTrainer
    Created on : Jan 18, 2022, 1:26:37 AM
    Author     : Hp
--%>

<%@page import="goms.com.Trainer"%>
<%@page import="goms.com.trainerDAO"%>
<%@page import="goms.com.DBConnection, java.sql.*,java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            @media (min-width: 1025px) {
  .h-custom {
    height: 100vh !important;
  }
}
        </style>
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
    
    <%--
        //Trainer trainer = (Trainer) request.getSession().getAttribute(trainer);
            //String trainerId = request.getParameter("id");
            //Trainer trainer = trainerDAO.getRecordById(Integer.parseInt(trainerId));
            String ID = request.getParameter("id");
        DBConnection database = new DBConnection();
        trainerDAO tDao = new trainerDAO();
       
        Trainer trainer = (Trainer) request.getSession().getAttribute("trainer");
        database.closeConnection();
        --%>
        <%--
        Trainer trainer = (Trainer) request.getSession().getAttribute("trainer");
    --%>
    <%
        int trainerId = Integer.parseInt(request.getParameter("id"));
        DBConnection db = new DBConnection();
        trainerDAO trainerDao = new trainerDAO();
        Trainer trainer = trainerDao.retrieveOneTrainer(trainerId);
        db.closeConnection();
        %>
    <body class="d-flex flex-column min-vh-100">
        <section class="h-100 h-custom" style="background-color: #918b8b;">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-8 col-xl-6">
                  <div class="card rounded-3">
                    <img src="img/trainer.jpg" class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;" alt="Sample photo">
                    <div class="card-body p-4 p-md-5">
                      <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">New Trainer Registration</h3>
          
                      <form action="processTrainerUpdate.jsp" class="px-md-2"  method="get">
          
                          <input type="hidden" name="hidid" value="<%=trainer.getID()%>"/>
                        <div class="form-outline mb-4">
                            <label class="form-label" name="trainerID">Trainer ID</label>
                            <input type="text" name="trainerID" class="form-control" value="<%=trainer.getTrainerID()%>" />
                          </div>

                        <div class="form-outline mb-4">
                          <label class="form-label" name="trainerName">Trainer Name</label>
                          <input type="text" name="trainerName" class="form-control" value="<%=trainer.getTrainerName()%>" />
                        </div>
          
                        <div class="form-outline mb-4">
                            <label class="form-label" name="email">Trainer email</label>
                            <input type="text" name="email" class="form-control" value="<%=trainer.getEmail()%>" />
                          </div>
                          
                          <div class="form-outline mb-4">
                            <label class="form-label" name="password">Temporary Password</label>
                            <input type="text" name="password" class="form-control" value="<%=trainer.getPassword()%>" />
                          </div>

                        <div class="form-outline mb-4">
                          <label class="form-label" name="phone">Trainer Phone Number</label>
                          <input type="text" name="phone" class="form-control" value="<%=trainer.getPhone()%>" />
                        </div>
          
                        <button name="Submit" type="submit" value="Submit" class="btn btn-success btn-lg mb-1" style="background-color: #302d2d;">Update</button>
          
                      </form>
          
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

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


<%-- 
    Document   : editProfileTrainer
    Created on : Jan 22, 2022, 9:35:27 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="goms.com.Trainer"%>
<%@page import="goms.com.trainerDAO"%>
<%@page import="goms.com.DBConnection, java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">
        <link rel='stylesheet' href='css/edit.css'>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <header>
                
 <%
        Trainer trainer = (Trainer) request.getSession().getAttribute("trainer");
    %>
     
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
                                    <a class="nav-link" href="logout.jsp"><i class="fa fa-sign-out fa-fw mr-1"></i>Sign Out</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!--# Navbar #-->
                </header>
    </head>
    <%--
String ID = request.getParameter("ID");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "goms";
String userid = "root";
String password = "admin";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from trainer where ID="+ID;
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
--%>

    <body class="d-flex flex-column min-vh-100">
        <div class="container" style="margin-top: 2%; margin-bottom: 2%;">
            <div class="row gutters">
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="account-settings">
                        <div class="user-profile">
                            <div class="user-avatar">
                                <img src="https://bootdey.com/img/Content/avatar/avatar5.png" alt="Maxwell Admin">
                            </div>
                            <h5 class="user-name"><%=trainer.getTrainerName()%></h5>
                            <h6 class="user-email"><%=trainer.getEmail()%></h6>
                        </div>
                    </div>
                </div>
            </div>
            </div>
      
        
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
            <div class="card h-100">
                <div class="card-body">
                    <div class="row gutters">
                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                            <h6 class="mb-2 text-primary">Personal Details</h6>
                        </div>
                        <form action="processProfileTrainer.jsp" class="px-md-2"  method="get">
                            <input type="hidden" name="hidid" value="<%=trainer.getID()%>"/>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="trainerID">Trainer ID</label>
                                <input type="url" class="form-control" name="trainerID" value="<%=trainer.getTrainerID()%>" disabled>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="trainerName">Full Name</label>
                                <input type="text" class="form-control" name="trainerName" value="<%=trainer.getTrainerName()%>"/>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email"  value="<%=trainer.getEmail()%>"/>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="phone">Password</label>
                                <input type="password" class="form-control" name="phone" value="<%=trainer.getPassword()%>" />
                            </div>
                        </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input type="text" class="form-control" name="phone" value="<%=trainer.getPhone()%>" />
                            </div>
                        </div>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right">
                                    <input name="Submit" type="submit" value="Submit" class="btn btn-success btn-lg mb-1" style="background-color: #302d2d;">
                                    <input name=submit type="button" value="Cancel" class="btn btn-success btn-lg mb-1" style="background-color: #302d2d;" onclick="window.location.href = 'trainerMain.jsp'; return false;">
                                   <!-- <button type="button" value="cancel" name="cancel" class="btn btn-secondary" onclick="window.location='trainerMain.jsp'">Cancel</button>-->
                                    <!--<button type="submit" value="Update" name="Update" class="btn btn-primary" onclick="return myFunction();" >Update</button>-->
                                </div>
                            </div>
                        </div>
                            <!--<script>
            function myFunction() {
              if (confirm("Profile Updated!")) {
                window.location= "updateprofilelect";
              } else {
                txt = "You pressed Cancel!";
              }
            }
          </script>-->
          
                        </form>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
                            
 </body>
        
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.13.0-next.1/esm/popper.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'></script>
   
    <footer id="sticky-footer" class="mt-auto py-4 bg-dark text-white-50">
        <div class="container text-center">
          <small>Copyright &copy; 2021 MyGYM4you</small>
        </div>
      </footer>
        </html>

<%-- 
    Document   : myTrainee
    Created on : Jan 22, 2022, 9:38:22 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <meta charset="UTF-8">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />

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
                                            <th>Trainee Name</th>
                                            <th>Phone Number</th>
                                            <th>Membership ID</th>
                                            <th>Details</th>
                                            <th>Record Tracking</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>C10001</td>
                                            <td>Siti Saleha</td>
                                            <td>0152678156</td>
                                            <td>M01</td>
                                            <td>1 Year</td>
                                            <td><a href="myTraineeRecord.jsp"><button type="button" class="btn btn-outline-dark"><i class="fa fa-eye">&nbspView</i></button></a></span></td>
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
    <footer id="sticky-footer" class="mt-auto py-4 bg-dark text-white-50">
        <div class="container text-center">
          <small>Copyright &copy; 2021 MyGYM4you</small>
        </div>
      </footer>
</html>

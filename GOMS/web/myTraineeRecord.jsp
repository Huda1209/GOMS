<%-- 
    Document   : myTraineeRecord
    Created on : Jan 22, 2022, 9:42:02 PM
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
        <link rel="stylesheet" href="css/recordTracking.css">
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
    <body class="d-flex flex-column min-vh-100" style="margin-top: 0px;">
        <section class="section about-section gray-bg" id="about">
            <div class="container">
                <div class="row align-items-center flex-row-reverse">
                    <div class="col-lg-6">
                        <div class="about-text go-to">
                            <h3 class="dark-color">My Diary</h3>
                            <h6 class="theme-color lead">Siti Saleha</h6>
                            <p>My goals is to lose weight in a healthy way with the good diet.</p>
                            <hr><p>My Trainer: Amir Syafiq (T10001)</p>
                            <div class="row about-list">
                                <div class="col-md-6">
                                    <div class="media">
                                        <label for="height">Height (cm)</label>
                                        <p id="height">160</p>
                                    </div>
                                    <div class="media">
                                        <label for="startWeight">Starting Weight (kg)</label>
                                        <p id="startWeight">70</p>
                                    </div>
                                    <div class="media">
                                        <label for="newWeight">Current Weight (kg)</label>
                                        <p id="newWeight">51</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="media">
                                        <label for="BMI">BMI</label>
                                        <p id="BMI">26.9</p>
                                    </div>
                                    <div class="media">
                                        <label for="targetWeight">Weight Goals (kg)</label>
                                        <p id="targetWeight">51</p>
                                    </div>
                                    <div class="media">
                                        <label for="program">Program</label>
                                        <p id="program">Lose Weight</p>
                                    </div>
                                </div>
                            </div>
                            <a href="editRecord.jsp"><button type="button" class="btn btn-outline-dark"><i class="fa fa-edit">&nbspEdit</i></button></a></span>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-avatar">
                            <img src="https://bootdey.com/img/Content/avatar/avatar8.png" title="" alt="">
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
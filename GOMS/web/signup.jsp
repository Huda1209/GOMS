<%-- 
    Document   : signup
    Created on : Jan 22, 2022, 9:03:49 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0/css/bootstrap.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css'>
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/signup.css">
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

                        <section class="h-80 h-custom gradient-custom-2">
                            <div class="container py-5 h-90">
                              <div class="row d-flex justify-content-center align-items-center h-80">
                                <div class="col-12">
                                  <div class="card card-registration card-registration-2" style="border-radius: 15px;">
                                    <div class="card-body p-0">
                                      <div class="row g-0">
                                        <div class="col-lg-6">
                                          <div class="p-5">
                                            <h3 class="fw-normal mb-5" style="color: #d435cc;">General Infomation</h3>
                          
                                            <div class="row">
                                              <div class="mb-4 pb-2">
                          
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Examplev2">Name</label>
                                                  <input type="text" id="form3Examplev2" class="form-control form-control-lg" />
                                                  
                                                </div>
                          
                                              </div>
                                              <div class="mb-4 pb-2">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Examplev3">Email</label>
                                                  <input type="text" id="form3Examplev3" class="form-control form-control-lg" />
                                                </div>
                                              </div>

                                              <div class="mb-4 pb-2">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Examplev3">Password</label>
                                                  <input type="password" id="form3Examplev3" class="form-control form-control-lg" />
                                                  
                                                </div>
                                              </div>

                                              <div class="mb-4 pb-2">
                                                <div class="form-outline">
                                                    <label class="form-label" for="form3Examplev3">Phone</label>
                                                  <input type="text" id="form3Examplev3" class="form-control form-control-lg" />
                                                </div>
                                              </div>
                                            </div>
                        
                                              </div>
                                            </div>
                          
                                        <div class="col-lg-6 bg-indigo text-white">
                                          <div class="p-5">
                                            <h3 class="fw-normal mb-5">Membership Details</h3>
                          
                                            <div class="mb-4 pb-2">
                                              <div class="form-outline form-white">

                                                <p> Type A - RM720 for 1 year including a trainer</p><br>
                                                <p> Type B - RM50 per Month, No contract, Cancel Anytime without Trainer</p><br>
                                                <p> Type C - RM540 For 2 Years including a Trainer</p><br><br>
                                                
                                              </div>
                                            
                                            <div class="mb-4 pb-2">
                                                <label class="form-label" for="form3Examplev4">Membership Type</label><br>
                                                <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                                  <option value="0">Please Choose</option>
                                                  <option value="1">A</option>
                                                  <option value="2">B</option>
                                                  <option value="3">C</option>
                                                </select>
                                              </div>

                                              <div class="mb-4 pb-2">
                                                <label class="form-label" for="form3Examplev4">Program</label><br>
                                                <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                                  <option value="0">Please Choose</option>
                                                  <option value="1">Lose Weight</option>
                                                  <option value="2">Gain Weight</option>
                                                  <option value="3">Bulking</option>
                                                </select>
                                              </div>
                        
                                            <button type="button" class="btn btn-dark btn-lg" data-mdb-ripple-color="dark">Register</button>
                          
                                          </div>
                                        </div>
                                      </div>
                                    </div>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
                        </body>
                        <footer id="sticky-footer" class="mt-auto py-4 bg-dark text-white-50">
                            <div class="container text-center">
                              <small>Copyright &copy; 2021 MyGYM4you</small>
                            </div>
                          </footer>
                          </html>
                          

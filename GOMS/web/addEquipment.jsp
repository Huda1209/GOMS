<%-- 
    Document   : addEquipment
    Created on : Jan 14, 2022, 2:53:29 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*"%>

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
                        <a class="navbar-brand text-white" href="adminMain.jsp"><i class="fa fa-diamond fa-lg mr-2"></i>MyGYM4you</a>
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
    <body>
        <section class="h-100 h-custom" style="background-color: #918b8b;">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-8 col-xl-6">
                  <div class="card rounded-3">
                    <img src="img/equip.jpg" class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;" alt="Sample photo">
                    <div class="card-body p-4 p-md-5">
                      <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Add Equipment</h3>
          
                      <form class="px-md-2" action="processEquipList.jsp" method="post">
          
                        <div class="form-outline mb-4">
                            <label class="form-label" for="equipID">Equipment ID</label>
                            <input type="text" name="equipID" class="form-control" />
                          </div>

                        <div class="form-outline mb-4">
                          <label class="form-label" for="equipName">Equipment Name</label>
                          <input type="text" name="equipName" class="form-control" />
                        </div>
          
                        <div class="row">
                          <div class="col-md-6 mb-4">
                            <label class="form-label" for="category">Category</label><br>
                            <select name="category">
                              <option value="1" disabled>Body Part</option>
                              <option value="Upper Body">Upper Body</option>
                              <option value="Lower Body">Lower Body</option>
                              <option value="Whole Body">Whole Body</option>
                            </select>
          
                          </div>
                        </div>
          
                        <div class="row mb-4 pb-2 pb-md-0 mb-md-5">
                          <div class="col-md-6">
          
                            <div class="form-outline">
                              <label class="form-label" for="noOfEquip">Number of Equipment</label>
                              <input type="text" name="noOfEquip" class="form-control" />
                            </div>
          
                          </div>
                        </div>
          
                          <button type="submit" value="Submit" name="Submit" class="btn btn-success btn-lg mb-1" style="background-color: #302d2d;">Add</button>
          
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
    <footer id="sticky-footer" class="flex-shrink-0 py-4 bg-dark text-white-50">
        <div class="container text-center">
          <small>Copyright &copy; 2021 MyGYM4you</small>
        </div>
      </footer>
</html>

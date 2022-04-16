<%-- 
    Document   : processTrainerUpdate
    Created on : Jan 18, 2022, 1:32:17 AM
    Author     : Hp
--%>

<%@page import="goms.com.Trainer"%>
<%@page import="goms.com.trainerDAO"%>
<%@page import="goms.com.DBConnection, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Process</title>
    </head>
    <body>
        <%
            DBConnection db = new DBConnection();
            trainerDAO dao = new trainerDAO();
            Trainer trainer = new Trainer();
            
            int trainerId = Integer.parseInt(request.getParameter("hidid"));
            String trainerID = request.getParameter("trainerID");
            String trainerName = request.getParameter("trainerName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            
            trainer.setID(trainerId);
            trainer.setTrainerID(trainerID);
            trainer.setTrainerName(trainerName);
            trainer.setEmail(email);
            trainer.setPassword(password);
            trainer.setPhone(phone);
            
            int result = dao.updateTrain(trainer);
            if (result>0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert (\"Success Update the Record.\")");
                out.println("</script >");
            RequestDispatcher rd = request.getRequestDispatcher("trainerList.jsp");
                rd.include(request, response);
            } db.closeConnection();
            %>
        <%--
            int ID =Integer.parseInt(request.getParameter("ID"));
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            
            DBConnection db = new DBConnection();
            trainerDAO trainerDao = new trainerDAO();
            Trainer trainer = new Trainer();
            
            
            trainer.setID(ID);
            trainer.setTrainerID(id);
            trainer.setTrainerName(name);
            trainer.setEmail(email);
            trainer.setPassword(password);
            trainer.setPhone(phone);
           
            int result = trainerDao.updateTrainer(trainer);
            if (result > 0 ){
                out.println("<script type=\"text/javascript\">");
                out.println("alert (\"Success Update the Record\")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("trainerList.jsp");
                rd.include(request, response);
            }
            db.closeConnection();
        --%>
        <%--
            int i = trainerDAO.updateTrainer(trainer);
            response.sendRedirect("trainerList.jsp");
            --%>
            <%--
                Trainer trainer = (Trainer) request.getSession().getAttribute("trainer");
                
                int ID =Integer.parseInt(request.getParameter("ID"));
                String trainerID = request.getParameter("trainerID");
                String trainerName = request.getParameter("trainerName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
     
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/goms","root","admin");
            String mySqlQuery = ("update trainer set trainerID=?,"
            + "trainerName=?,email=?,password=?,phone=? where ID= "+trainer.getID());
            PreparedStatement myPS = conn.prepareStatement(mySqlQuery);
            myPS.setString(1, trainer.getTrainerID());
            myPS.setString(2, trainer.getTrainerName());
            myPS.setString(3, trainer.getEmail());
            myPS.setString(4, trainer.getPassword());
            myPS.setString(5, trainer.getPhone());
           
      
            
   
            int x=myPS.executeUpdate();
            if (x>0){
            out.println("Updated successfully...");
            out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Your profile has been updated.\")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("loginstaff.jsp");
                rd.include(request,response);
            }else{
            out.println("Updated Fail");
            }
        }catch(Exception e){
        out.println(e);
        }
        
                --%>
    </body>
</html>

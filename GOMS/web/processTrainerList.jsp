<%-- 
    Document   : processTrainerList
    Created on : Jan 13, 2022, 1:52:09 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, goms.com.DBConnection, goms.com.trainerDAO"%>
<jsp:useBean id="trainer" class="goms.com.Trainer" scope="request"/>
<jsp:setProperty name="trainer" property="*"/>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Task 2: Process Add New Student to Database</title>
    </head>
    <body>
<%
            
            DBConnection database = new DBConnection();
            trainerDAO trainerDao = new trainerDAO();
            
            String trainerID = request.getParameter("trainerID");
            String trainerName = request.getParameter("trainerName");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            int result = trainerDao.addTrainer(trainer);
            
            if(result > 0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("trainerList.jsp");
                rd.include(request, response);
            } database.closeConnection();
            %>
    <%--
           int result;
            //step 1: load jdbc driver
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded..!");
            
            //step 2: Establishe the connection
            String myURL = "jdbc:mysql://localhost/goms";
            Connection myconnection = DriverManager.getConnection(myURL,"root","admin");
            System.out.println("Step 2: Database is connected..!");
            
            //step 3: Create a preparedStatement onbejct..
            System.out.println("Step 3: Prepared Statement created...!");
            
            String sInsertQry = "INSERT INTO trainer(trainerID, trainerName, email, password, phone) VALUES(?, ?, ?, ?, ?)";
            System.out.println("\tSQL Query: "+sInsertQry);
            
            PreparedStatement myPS = myconnection.prepareStatement(sInsertQry);
            
            System.out.println("Step 4: Perform insertion of record...!");
            myPS.setString(1, myTrainer.getTrainerID());
            myPS.setString(2, myTrainer.getTrainerName());
            myPS.setString(3, myTrainer.getEmail());
            myPS.setString(4, myTrainer.getPassword());
            myPS.setInt(5, myTrainer.getPhone());
            
            //Execute the query
            result = myPS.executeUpdate();
            
            if (result > 0){
                System.out.print("\tRecord successfully added into Student's table...!");
                out.println("<p>" + "Record with student no "+myStudent.getStuno()+ " successfullr created..!"+"</p>");
                out.print("<p>" +"Details of record are; "+"<p>");
                out.print("<p>Student ID: "+myStudent.getStuno()+"</p>");
                out.print("<p>Student Name: "+myStudent.getStuname()+"</p>");
                out.print("<p>Program: "+myStudent.getStuprogram()+"</p>");
                
            }
            out.println("<script type=\"text/javascript\">"); 
                out.println("alert(\"You have successfully login!\");"); 
                out.println("location.href ="+request.getContextPath()+"\"/retrieve?trainerID="+trainerID+";\""); 
                out.println("</script >"); 
                 
        } else { 
            request.setAttribute("studID", studID); 
             out.println("<script type=\"text/javascript\">"); 
                out.println("alert(\"Incorrect Id or Password!"+studID+",,,"+cID+",,,"+cName+"\")"); 
                out.println("</script >"); 
                RequestDispatcher rd = request.getRequestDispatcher("loginstud.jsp"); 
                rd.include(request,response); 
        } 
            //close database connection
            System.out.print("Step 5: Close database connection...!");
            myconnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed..!");
            --%>
    </body>
</html>

<%-- 
    Document   : processProfileTrainer
    Created on : Apr 3, 2022, 9:34:26 PM
    Author     : Hp
--%>

<%@page import="goms.com.Trainer"%>
<%@page import="goms.com.trainerDAO"%>
<%@page import="goms.com.DBConnection, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="trainer" class="goms.com.Trainer" scope="request"/>
<jsp:setProperty name="trainer" property="*"/>

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
            RequestDispatcher rd = request.getRequestDispatcher("trainerLogin.jsp");
                rd.include(request, response);
            } db.closeConnection();
            %>
            <%--
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/goms";%>
<%!String user = "root";%>
<%!String psw = "admin";%>

<%
int ID = request.getParameter(Integer.parseInt("ID"));
String trainerID = request.getParameter("trainerID");
String trainerName = request.getParameter("trainerName");
String email = request.getParameter("email");
String password = request.getParameter("password");
String phone = request.getParameter("phone");
if(id != null){

Connection con ;
PreparedStatement ps;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="update trainer set ID=?, trainerID=?, trainerName=?, email=?, password=?, phone=? where ID="+ID;
ps = con.prepareStatement(sql);


ps.setInt(1, ID);
ps.setString(2, trainerID);
ps.setString(3, trainerName);
ps.setString(4, email);
ps.setString(5, password);
ps.setString(6, phone);
/**ps.executeUpdate();

con.close();
out.println("Updated successfully...");
out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Your profile has been updated. \")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("trainerMain.jsp");
                rd.include(request,response);*/

int i =ps.executeUpdate();
            if (i>0){
            out.println("Updated successfully...");
            out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Your profile has been updated. \")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("trainerMain.jsp");
                rd.include(request,response);
            }else{
            out.println("Updated Fail");
            }
        }catch(Exception e){
        out.println(e);
        }}


--%>
        
          

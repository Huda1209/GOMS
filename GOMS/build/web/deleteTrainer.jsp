<%-- 
    Document   : deleteTrainer
    Created on : Jan 20, 2022, 10:51:42 PM
    Author     : Hp
--%>

<%@page import="goms.com.DBConnection, goms.com.Trainer, goms.com.trainerDAO, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%--
            trainerDAO.deleteTrainer(trainer);
            response.sendRedirect("trainerList.jsp");
            --%>
        <%
            int trainerId = Integer.parseInt(request.getParameter("id"));
            DBConnection db = new DBConnection();
            trainerDAO trainerDao = new trainerDAO();
            int result = trainerDao.deleteTrainer1(trainerId);
            db.closeConnection();
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert (\"Success Delete the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("trainerList.jsp");
                rd.include(request, response);
            }
            %>
           
    </body>
</html>

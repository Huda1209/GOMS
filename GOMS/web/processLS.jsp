<%-- 
    Document   : processLS
    Created on : Apr 6, 2022, 12:18:24 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.IOException"%>
<%@page import="goms.com.Trainer"%>
<%@page import="goms.com.trainerDAO"%> 

<%

        String trainerID = request.getParameter("trainerID");
        String password = request.getParameter("password");

        Trainer trainer = trainerDAO.signintrainer(trainerID, password);

        if (trainer != null) {
            session.setAttribute("trainer", trainer);
            out.println("<script type=\"text/javascript\">");
                out.println("alert(\"You have successfully login!\")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("trainerMain.jsp");
                rd.include(request,response);
                
                
        } else {
             out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Incorrect Id or Password!\")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("trainerLogin.jsp");
                rd.include(request,response);

        }

    


%>
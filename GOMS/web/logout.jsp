<%-- 
    Document   : logout
    Created on : Apr 6, 2022, 1:15:07 AM
    Author     : Hp
--%>

<%
    session.invalidate();
    response.sendRedirect("loginPage.jsp");
    %>
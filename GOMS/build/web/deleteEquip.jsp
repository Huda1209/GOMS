<%-- 
    Document   : deleteEquip
    Created on : Jan 23, 2022, 10:40:04 PM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="goms.com.DBConnection, goms.com.Equipment, goms.com.EquipmentDAO, java.sql.*"%>

<%
    int equipmentId = Integer.parseInt(request.getParameter("id"));
    DBConnection db = new DBConnection();
    EquipmentDAO dao = new EquipmentDAO();
    int result = dao.deleteEquipment(equipmentId);
    db.closeConnection();
    
    if(result >0) {
         out.println("<script type=\"text/javascript\">");
                out.println("alert (\"Success Delete the Record\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("equipmentList.jsp");
                rd.include(request, response);
    }
    %>

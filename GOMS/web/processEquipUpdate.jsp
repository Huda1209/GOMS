<%-- 
    Document   : processEquipUpdate
    Created on : Jan 23, 2022, 10:34:13 PM
    Author     : Hp
--%>
<%@page import="goms.com.Equipment"%>
<%@page import="goms.com.EquipmentDAO"%>
<%@page import="goms.com.DBConnection, java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Equipment</title>
    </head>
    <body>
        <%
            DBConnection db = new DBConnection();
            EquipmentDAO dao = new EquipmentDAO();
            Equipment equipment = new Equipment();
            
            int equipmentId = Integer.parseInt(request.getParameter("hidid"));
            String equipID = request.getParameter("equipID");
            String equipName = request.getParameter("equipName");
            String category = request.getParameter("category");
            String noOfEquip = request.getParameter("noOfEquip");
            
            equipment.setId(equipmentId);
            equipment.setEquipID(equipID);
            equipment.setEquipName(equipName);
            equipment.setCategory(category);
            equipment.setNoOfEquip(noOfEquip);
            
            int result = dao.updateEquipment(equipment);
            if (result>0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert (\"Success Update the Record.\")");
                out.println("</script >");
            RequestDispatcher rd = request.getRequestDispatcher("equipmentList.jsp");
                rd.include(request, response);
            } db.closeConnection();
            %>
    </body>
</html>

<%-- 
    Document   : processEquipList
    Created on : Jan 14, 2022, 3:14:50 AM
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, goms.com.DBConnection, goms.com.EquipmentDAO"%>
<jsp:useBean id="equipment" class="goms.com.Equipment" scope="request"/>
<jsp:setProperty name="equipment" property="*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DBConnection database = new DBConnection();
            EquipmentDAO equipmentDAO = new EquipmentDAO();
            
            String equipID=request.getParameter("equipID");
            String equipName=request.getParameter("equipName");
            String category = request.getParameter("category");
            String noOfEquip = request.getParameter("noOfEquip");            
            int result = equipmentDAO.addEquipment(equipment);
           
            if(result > 0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Success Add Record\")");
                out.println("</script >");
                RequestDispatcher rd = request.getRequestDispatcher("equipmentList.jsp");
                rd.include(request, response);
            } database.closeConnection();
            %>
    </body>
</html>

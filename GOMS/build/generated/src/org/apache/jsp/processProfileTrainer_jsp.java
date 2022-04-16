package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import goms.com.Trainer;
import goms.com.trainerDAO;
import goms.com.DBConnection;
import java.sql.*;

public final class processProfileTrainer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      goms.com.Trainer trainer = null;
      synchronized (request) {
        trainer = (goms.com.Trainer) _jspx_page_context.getAttribute("trainer", PageContext.REQUEST_SCOPE);
        if (trainer == null){
          trainer = new goms.com.Trainer();
          _jspx_page_context.setAttribute("trainer", trainer, PageContext.REQUEST_SCOPE);
        }
      }
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("trainer"), request);
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Update Process</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

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
            
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("        \n");
      out.write("          \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\" />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\" />\n");
      out.write("        <meta name=\"description\" content=\"\" />\n");
      out.write("        <meta name=\"author\" content=\"\" />\n");
      out.write("        <title>Level Up Fitness Xpress</title>\n");
      out.write("        <!-- Favicon-->\n");
      out.write("        <link rel=\"icon\" type=\"image/x-icon\" href=\"assets/favicon.ico\" />\n");
      out.write("        <!-- Bootstrap Icons-->\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Google fonts-->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("        <!-- SimpleLightbox plugin CSS-->\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css\" rel=\"stylesheet\" />\n");
      out.write("        <!-- Core theme CSS (includes Bootstrap)-->\n");
      out.write("        <link href=\"css/styles.css\" rel=\"stylesheet\" />\n");
      out.write("    </head>\n");
      out.write("    <body id=\"page-top\">\n");
      out.write("        <!-- Navigation-->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light fixed-top py-3\" id=\"mainNav\">\n");
      out.write("            <div class=\"container px-4 px-lg-5\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#page-top\">MyGYM4you</a>\n");
      out.write("                <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"><span class=\"navbar-toggler-icon\"></span></button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("                    <ul class=\"navbar-nav ms-auto my-2 my-lg-0\">\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"#about\">About</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"#services\">Services</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"#portfolio\">Portfolio</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a class=\"nav-link\" href=\"#contact\">Contact</a></li>\n");
      out.write("                        <li class=\"nav-item pl-1\">\n");
      out.write("                            <a class=\"nav-link\" href=\"signup.jsp\">Sign Up</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item pl-1\">\n");
      out.write("                            <a class=\"nav-link\" href=\"loginPage.jsp\">Sign In</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!-- Masthead-->\n");
      out.write("        <header class=\"masthead\">\n");
      out.write("            <div class=\"container px-4 px-lg-5 h-100\">\n");
      out.write("                <div class=\"row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center\">\n");
      out.write("                    <div class=\"col-lg-8 align-self-end\">\n");
      out.write("                        <h1 class=\"text-white font-weight-bold\">Level Up Fitness Express, Kuala Terengganu</h1>\n");
      out.write("                        <hr class=\"divider\" />\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-8 align-self-baseline\">\n");
      out.write("                        <p class=\"text-white-75 mb-5\">WELCOME TO LEVEL UP FITNESS XPRESS MALAYSIA’S \n");
      out.write("                            <br>LARGEST 24HR LOW-COST FITNESS CHAIN.\n");
      out.write("                           <br>We give you all the essentials and none of the frills, so you can stay fit – for less!</p>\n");
      out.write("                        <a class=\"btn btn-primary btn-xl\" href=\"#about\">Find Out More</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("        <!-- About-->\n");
      out.write("        <section class=\"page-section bg-primary\" id=\"about\">\n");
      out.write("            <div class=\"container px-4 px-lg-5\">\n");
      out.write("                <div class=\"row gx-4 gx-lg-5 justify-content-center\">\n");
      out.write("                    <div class=\"col-lg-8 text-center\">\n");
      out.write("                        <h2 class=\"text-white mt-0\">Why Choose Level Up Fitness Xpress</h2>\n");
      out.write("                        <hr class=\"divider divider-light\" />\n");
      out.write("                        <p class=\"text-white-75 mb-4\">LUF24HR is the most affordable gym in Kuala Terengganu, period. We’ve thrown out the extras so we can charge you less. Simple!</p>\n");
      out.write("                        <a class=\"btn btn-light btn-xl\" href=\"#services\">Get Started!</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Services-->\n");
      out.write("        <section class=\"page-section\" id=\"services\">\n");
      out.write("            <div class=\"container px-4 px-lg-5\">\n");
      out.write("                <h2 class=\"text-center mt-0\">At Your Service</h2>\n");
      out.write("                <hr class=\"divider\" />\n");
      out.write("                <div class=\"row gx-4 gx-lg-5\">\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 text-center\">\n");
      out.write("                        <div class=\"mt-5\">\n");
      out.write("                            <div class=\"mb-2\"><i class=\"bi-gem fs-1 text-primary\"></i></div>\n");
      out.write("                            <h3 class=\"h4 mb-2\">Flexible</h3>\n");
      out.write("                            <p class=\"text-muted mb-0\">We do away with contracts, so we have memberships as flexible as our workout hours.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 text-center\">\n");
      out.write("                        <div class=\"mt-5\">\n");
      out.write("                            <div class=\"mb-2\"><i class=\"bi-laptop fs-1 text-primary\"></i></div>\n");
      out.write("                            <h3 class=\"h4 mb-2\">HIGH-TECH</h3>\n");
      out.write("                            <p class=\"text-muted mb-0\">Get access to 30 over pieces of equipment, including high-tech LifeFitness treadmills equipped with cardio theatres. We even got all the new functional training stuff like TRX, Kettlebells and Plyo Boxes.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 text-center\">\n");
      out.write("                        <div class=\"mt-5\">\n");
      out.write("                            <div class=\"mb-2\"><i class=\"bi-globe fs-1 text-primary\"></i></div>\n");
      out.write("                            <h3 class=\"h4 mb-2\">24 HOURS</h3>\n");
      out.write("                            <p class=\"text-muted mb-0\">Sign up on this website, collect your wristband on your first visit, then simply let yourself in 24 hours a day 7 days a week. </p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-3 col-md-6 text-center\">\n");
      out.write("                        <div class=\"mt-5\">\n");
      out.write("                            <div class=\"mb-2\"><i class=\"bi-heart fs-1 text-primary\"></i></div>\n");
      out.write("                            <h3 class=\"h4 mb-2\">LOW COST</h3>\n");
      out.write("                            <p class=\"text-muted mb-0\">We do away with lockers, towels and saunas. We’ve invested heavily in technology to do away with traditional reception and sales staff. What we save, we pass on to you.</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("        <!-- Portfolio-->\n");
      out.write("        <div id=\"portfolio\">\n");
      out.write("            <div class=\"container-fluid p-0\">\n");
      out.write("                <div class=\"row g-0\">\n");
      out.write("                    <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                        <a class=\"portfolio-box\" href=\"assets/img/portfolio/fullsize/1.jpg\" title=\"Project Name\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"assets/img/portfolio/thumbnails/1.jpg\" alt=\"...\" />\n");
      out.write("                            <div class=\"portfolio-box-caption\">\n");
      out.write("                                <div class=\"project-name\">Hi-Tech Cardio</div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                        <a class=\"portfolio-box\" href=\"assets/img/portfolio/fullsize/2.jpg\" title=\"Project Name\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"assets/img/portfolio/thumbnails/2.jpg\" alt=\"...\" />\n");
      out.write("                            <div class=\"portfolio-box-caption\">\n");
      out.write("                                <div class=\"project-name\">Strength Training</div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                        <a class=\"portfolio-box\" href=\"assets/img/portfolio/fullsize/3.jpg\" title=\"Project Name\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"assets/img/portfolio/thumbnails/3.jpg\" alt=\"...\" />\n");
      out.write("                            <div class=\"portfolio-box-caption\">\n");
      out.write("                                <div class=\"project-name\">Functional Goodness</div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                        <a class=\"portfolio-box\" href=\"assets/img/portfolio/fullsize/4.jpg\" title=\"Project Name\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"assets/img/portfolio/thumbnails/4.jpg\" alt=\"...\" />\n");
      out.write("                            <div class=\"portfolio-box-caption\">\n");
      out.write("                                <div class=\"project-name\">Classes All Day</div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                        <a class=\"portfolio-box\" href=\"assets/img/portfolio/fullsize/5.jpg\" title=\"Project Name\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"assets/img/portfolio/thumbnails/5.jpg\" alt=\"...\" />\n");
      out.write("                            <div class=\"portfolio-box-caption\">\n");
      out.write("                                <div class=\"project-name\">Truly Personal Trainer</div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4 col-sm-6\">\n");
      out.write("                        <a class=\"portfolio-box\" href=\"assets/img/portfolio/fullsize/6.jpg\" title=\"Project Name\">\n");
      out.write("                            <img class=\"img-fluid\" src=\"assets/img/portfolio/thumbnails/6.jpg\" alt=\"...\" />\n");
      out.write("                            <div class=\"portfolio-box-caption p-3\">\n");
      out.write("                                <div class=\"project-name\">Many Trainers</div>\n");
      out.write("                            </div>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Call to action-->\n");
      out.write("        <section class=\"page-section bg-dark text-white\">\n");
      out.write("            \n");
      out.write("        </section>\n");
      out.write("        <!-- Contact-->\n");
      out.write("        <section class=\"page-section\" id=\"contact\">\n");
      out.write("            <div class=\"container px-4 px-lg-5\">\n");
      out.write("                <div class=\"row gx-4 gx-lg-5 justify-content-center\">\n");
      out.write("                    <div class=\"col-lg-8 col-xl-6 text-center\">\n");
      out.write("                        <h2 class=\"mt-0\">Let's Get In Touch!</h2>\n");
      out.write("                        <hr class=\"divider\" />\n");
      out.write("                        <p class=\"text-muted mb-5\">Ready to start your next project with us? Send us a messages and we will get back to you as soon as possible!</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <center>\n");
      out.write("                <a class=\"dropdown-item\" >019-266 2700</a>\n");
      out.write("                <a class=\"dropdown-item\" href=\"https://www.facebook.com/luf24hr/\" target=\"_blank\">Our Facebook</a>\n");
      out.write("                <a class=\"dropdown-item\">luf24hr@levelupfitness.com</a></center>\n");
      out.write("        </section>\n");
      out.write("        <!-- Footer-->\n");
      out.write("        <footer id=\"sticky-footer\" class=\"flex-shrink-0 py-4 bg-dark text-white-50\">\n");
      out.write("            <div class=\"container text-center\">\n");
      out.write("              <small>Copyright &copy; 2021 MyGYM4you</small>\n");
      out.write("            </div>\n");
      out.write("          </footer>\n");
      out.write("        <!-- Bootstrap core JS-->\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <!-- SimpleLightbox plugin JS-->\n");
      out.write("        <script src=\"https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js\"></script>\n");
      out.write("        <!-- Core theme JS-->\n");
      out.write("        <script src=\"js/scripts.js\"></script>\n");
      out.write("        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->\n");
      out.write("        <!-- * *                               SB Forms JS                               * *-->\n");
      out.write("        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->\n");
      out.write("        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->\n");
      out.write("        <script src=\"https://cdn.startbootstrap.com/sb-forms-latest.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

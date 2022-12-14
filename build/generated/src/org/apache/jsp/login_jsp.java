package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <form role=\"form\" action=\"/CADB_Biblioteca_Web/login?accion=logueo\" method=\"POST\" class=\"col-md-6 m-5\">\n");
      out.write("                <div class=\"block text-center\">\n");
      out.write("                    <img src=\"img/logo.png\" height=\"270px\" width=\"270px\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-12\">\n");
      out.write("                    <a type=\"button\" class=\"btn btn-success btn-block col-7 mx-auto mt-2 mb-5\" href=\"/CADB_Biblioteca_Web/ejemplares/consultarns.jsp\">Buscar ejemplares</a>\n");
      out.write("                    <div class=\"form-group mt-5\">\n");
      out.write("                        <div class=\"card p-4\">\n");
      out.write("                        <h4 class=\"text-center mb-3\">Usuarios registrados</h4>\n");
      out.write("                        <label for=\"carnet\">Ingrese su carnet:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"carnet\" id=\"carnet\" \n");
      out.write("                                   placeholder=\"Carnet\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    <div class=\"form-group mt-2\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese su contrase??a:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"password\" class=\"form-control\" id=\"contrasenia\" name=\"contrasenia\" \n");
      out.write("                                   placeholder=\"Contrase??a\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-info btn-block\">Iniciar sesi??n</button>\n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("\n");
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

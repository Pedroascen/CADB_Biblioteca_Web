package org.apache.jsp.libro;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Guardar Libro</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/components/menu.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <form role=\"form\" action=\"/CADB_Biblioteca_Web/libro?accion=insertar\" method=\"POST\">\n");
      out.write("                <input type=\"hidden\" name=\"codMaterial\">\n");
      out.write("                <h4>Agregar nuevo Libro:</h4>\n");
      out.write("                <div class=\"col-md-10\">\n");
      out.write("                     <div class=\"form-group\">\n");
      out.write("                        <label for=\"nombre\">Ingrese su Titulo:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"titulo\" id=\"nombre\" \n");
      out.write("                                   placeholder=\"Titulo\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"nombre\">Ingrese su Ubicacion:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"ufisica\" id=\"nombre\" \n");
      out.write("                                   placeholder=\"Nombre\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"apellido\">Ingrese Cantidad Ejemplares:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"apellido\" class=\"form-control\" id=\"cejemp\" name=\"cejemp\" \n");
      out.write("                                   placeholder=\"Apellido\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Autor:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"autor\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese NPaginas:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"npaginas\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Editorial:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"editorial\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Pais:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"pais\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese ISBN:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"isbn\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Año:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"anio\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Edicion:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"edicion\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Idioma:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"idioma\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Materia:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"materia\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label for=\"contrasenia\">Ingrese Descripcion:</label>\n");
      out.write("                        <div class=\"input-group\">\n");
      out.write("                            <input type=\"text\" class=\"form-control\" id=\"contrasenia\" name=\"descripcion\" \n");
      out.write("                                   placeholder=\"Contrasenia\" required>\n");
      out.write("                            <span class=\"input-group-addon\"></span>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Registrar</button>\n");
      out.write("                    <a class=\"btn btn-danger\" href=\"/CADB_Biblioteca_Web/usuario?accion=listar&ir=");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${usuarioLogin.id_rol}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">Cancelar</a>\n");
      out.write("                </div>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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

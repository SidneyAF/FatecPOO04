package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Collections;
import br.com.fatecpg.quiz.Jogadores;
import br.com.fatecpg.quiz.Db;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/bootstrap.jspf");
  }

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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("         ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://bootswatch.com/4/lux/bootstrap.min.css\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <title>Home</title>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");
 if (request.getParameter("nome") != null) {
                session.setAttribute("usuario", request.getParameter("nome"));
                response.sendRedirect("quiz.jsp");
            }
      out.write("\r\n");
      out.write("            <div style=\"position:absolute;width: 100%;padding:30px 10%;\">\r\n");
      out.write("        <form>\r\n");
      out.write("            <fieldset>\r\n");
      out.write("              <legend>Home</legend>\r\n");
      out.write("            \r\n");
      out.write(" \r\n");
      out.write("            </fieldset>\r\n");
      out.write("        </form>\r\n");
      out.write("         </div>    \r\n");
      out.write("        <h1>Home</h1>\r\n");
      out.write("\r\n");
      out.write("        <h3>Ultimos jogos</h3>\r\n");
      out.write("        <table>\r\n");
      out.write("            <thead>\r\n");
      out.write("                <tr>\r\n");
      out.write("                    <th>Nome</th>\r\n");
      out.write("                    <th>Pontuacao</th>\r\n");
      out.write("                </tr>\r\n");
      out.write("            </thead>\r\n");
      out.write("            ");
for (Jogadores j : Db.getJogadores()) {
      out.write("\r\n");
      out.write("            ");
int i = Db.getJogadores().indexOf(j);
      out.write("\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>");
      out.print(j.getNome());
      out.write("</td>\r\n");
      out.write("                <td>");
      out.print(j.getPontuacao());
      out.write("</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");
}
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <br>\r\n");
      out.write("        <form>\r\n");
      out.write("            Nome <input type=\"text\" name=\"nome\" required>\r\n");
      out.write("            <input type=\"submit\" name=\"login\" value=\"Entrar\">\r\n");
      out.write("        </form>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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

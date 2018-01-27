package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.util.List;
import java.util.ArrayList;

public final class books_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        \n");
      out.write("   <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">       \n");
      out.write("   <link rel=\"stylesheet\" href=\"header.css\">\n");
      out.write("</head> \n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div id=\"wrapper\">\n");
      out.write("            <header>\n");
      out.write("                <img src=\"biblio.jpg\" alt=\"biblio-header\">\n");
      out.write("            </header>\n");
      out.write("            <nav>\n");
      out.write("                <a class=\"menu active\" href=\"welcome.jsp\">Profil uzytkownika</a>\n");
      out.write("                <a class=\"menu active\" href=\"spis.jsp\">Spis ksiazek</a>\n");
      out.write("                <a class=\"menu active\" href=\"szukaj.jsp\">Szukaj</a>\n");
      out.write("                <a class=\"menu active\" href=\"my.html\">Moja biblioteka</a>\n");
      out.write("            </nav>\n");
      out.write("            <section>\n");
      out.write("                <article><h1>Znaleziono książki</h1>\n");
      out.write("\n");
      out.write("        \n");
      out.write("        ");

            try {
                request.setCharacterEncoding("iso-8859-2");

                String book_name = request.getParameter("search_boook");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test?zeroDateTimeBehavior=convertToNull", "root", "root");
                        
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from book where  tag LIKE '%" + book_name + "%'");

                while (rs.next()) {
                    String book = rs.getString("autor");
                    String book_des = rs.getString("nazwa");
                    
        
      out.write("\n");
      out.write("        <p style=\"width: 800px\"> ");
out.print(book);
                 out.print(" " + book_des);
            
      out.write("\n");
      out.write("        </p>\n");
      out.write("\n");
      out.write("        ");

                }
            } catch (Exception e) {

            }
        
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

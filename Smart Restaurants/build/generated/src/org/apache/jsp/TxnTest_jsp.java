package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class TxnTest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("   \n");
      out.write(" ");

 	Random randomGenerator = new Random();
	int randomInt = randomGenerator.nextInt(1000000);
//        String name=(String)request.getParameter("type");
//        int amt=0;
//        if(name.equals("1 month Rs.20000")){
//            amt=2;
//        }else if(name.equals("3 month Rs.50000")){
//            amt =5;
//        }else{
//            amt=1;
//        }
        int amt=Integer.parseInt(request.getParameter("amt"));
 
      out.write("\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js\"></script>\n");
      out.write("\t<title>Merchant Check Out</title>\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t\t.logo{\n");
      out.write("\t\t\tcolor:white;\n");
      out.write("\t\t}\n");
      out.write("\t\t/*.content{\n");
      out.write("\t\t\tmargin-top: 20%;\n");
      out.write("\t\t}*/\n");
      out.write("@media  (max-width: 600px){\n");
      out.write("\t\t\t.content{\n");
      out.write("\t\t\tmargin-top: 20%;\n");
      out.write("\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t\t@media  (min-width: 600px){\n");
      out.write("\t\t\t.content{\n");
      out.write("\t\t\tmargin-top: 10%;\n");
      out.write("\t\t}\n");
      out.write("\t\t}\n");
      out.write("\t</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<h1>Merchant Check Out Page</h1>\n");
      out.write("\t<pre>\n");
      out.write("\t</pre>\n");
      out.write("\t<form method=\"post\" action=\"pgRedirect.jsp\">\n");
      out.write("\t\t<table class=\"table table-bordered table-responsive\" >\n");
      out.write("\t\t\t<tbody>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<th scope=\"col\">S.No</th>\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Label</th>\n");
      out.write("\t\t\t\t\t<th scope=\"col\">Value</th>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td scope=\"row\">1</td>\n");
      out.write("\t\t\t\t\t<td><label>ORDER_ID::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"ORDER_ID\"\n");
      out.write("\t\t\t\t\t\tname=\"ORDER_ID\" autocomplete=\"off\"\n");
      out.write("\t\t\t\t\t\tvalue=\"ORDS_");
      out.print( randomInt );
      out.write("\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td scope=\"row\">2</td>\n");
      out.write("\t\t\t\t\t<td><label>CUSTID ::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"CUST_ID\"  name=\"CUST_ID\" autocomplete=\"off\" value=\"CUST001\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td scope=\"row\">3</td>\n");
      out.write("\t\t\t\t\t<td><label>INDUSTRY_TYPE_ID ::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"INDUSTRY_TYPE_ID\"  name=\"INDUSTRY_TYPE_ID\" autocomplete=\"off\" value=\"Retail\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td scope=\"row\">4</td>\n");
      out.write("\t\t\t\t\t<td><label>Channel ::*</label></td>\n");
      out.write("\t\t\t\t\t<td><input id=\"CHANNEL_ID\" \n");
      out.write("\t\t\t\t\t\t name=\"CHANNEL_ID\" autocomplete=\"off\" value=\"WEB\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td scope=\"row\">5</td>\n");
      out.write("\t\t\t\t\t<td><label>txnAmount*</label></td>\n");
      out.write("\t\t\t\t\t<td><input title=\"TXN_AMOUNT\" tabindex=\"10\"\n");
      out.write("\t\t\t\t\t\ttype=\"text\" name=\"TXN_AMOUNT\"\n");
      out.write("\t\t\t\t\t\tvalue=\"");
      out.print(amt);
      out.write("\">\n");
      out.write("\t\t\t\t\t</td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t\t<tr>\n");
      out.write("\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t<td></td>\n");
      out.write("\t\t\t\t\t<td><input value=\"CheckOut\" type=\"submit\"\tonclick=\"\"></td>\n");
      out.write("\t\t\t\t</tr>\n");
      out.write("\t\t\t</tbody>\n");
      out.write("\t\t</table>\n");
      out.write("\t\t* - Mandatory Fields\n");
      out.write("\t</form>\n");
      out.write("</body>\n");
      out.write("</html>");
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

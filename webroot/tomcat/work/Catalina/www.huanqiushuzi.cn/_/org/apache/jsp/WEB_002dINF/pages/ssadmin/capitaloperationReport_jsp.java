/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.73
 * Generated at: 2017-07-24 07:42:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.pages.ssadmin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class capitaloperationReport_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/pages/ssadmin/comm/include.inc.jsp", Long.valueOf(1483524289000L));
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<script src=\"../../static/ssadmin/js/js/highcharts.js\"></script>\r\n");
      out.write("<script src=\"../../static/ssadmin/js/js/modules/exporting.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t$(function() {\r\n");
      out.write("\t\t$('#capitalOperationReport').highcharts(\r\n");
      out.write("\t\t\t\t{\r\n");
      out.write("\t\t\t\t\tchart : {\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\ttitle : {\r\n");
      out.write("\t\t\t\t\t\ttext : '人民币充值统计表,区间总数：");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${total}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("'\r\n");
      out.write("\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\txAxis : {\r\n");
      out.write("\t\t\t\t\t\tcategories : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${key}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\r\n");
      out.write("\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\ttooltip : {\r\n");
      out.write("\t\t\t\t\t\tformatter : function() {\r\n");
      out.write("\t\t\t\t\t\t\tvar s;\r\n");
      out.write("\t\t\t\t\t\t\tif (this.point.name) { // the pie chart\r\n");
      out.write("\t\t\t\t\t\t\t\ts = '' + this.point.name + ': ' + this.y\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+ ' fruits';\r\n");
      out.write("\t\t\t\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\t\t\t\ts = '日期：' + this.x + '| 金额：' + this.y;\r\n");
      out.write("\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t\treturn s;\r\n");
      out.write("\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\tlabels : {\r\n");
      out.write("\t\t\t\t\t\titems : [ {\r\n");
      out.write("\t\t\t\t\t\t\thtml : '',\r\n");
      out.write("\t\t\t\t\t\t\tstyle : {\r\n");
      out.write("\t\t\t\t\t\t\t\tleft : '40px',\r\n");
      out.write("\t\t\t\t\t\t\t\ttop : '8px',\r\n");
      out.write("\t\t\t\t\t\t\t\tcolor : 'black'\r\n");
      out.write("\t\t\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\t} ]\r\n");
      out.write("\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\tseries : [ {\r\n");
      out.write("\t\t\t\t\t\tname : '日期',\r\n");
      out.write("\t\t\t\t\t\tdata : ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${value}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\r\n");
      out.write("\t\t\t\t\t} ]\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<div class=\"pageHeader\">\r\n");
      out.write("\t<form onsubmit=\"return navTabSearch(this);\"\r\n");
      out.write("\t\taction=\"ssadmin/capitaloperationReport.html\" method=\"post\">\r\n");
      out.write("\t\t<div class=\"searchBar\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<table class=\"searchContent\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td>开始日期： <input type=\"text\" name=\"startDate\" class=\"date\"\r\n");
      out.write("\t\t\t\t\t\treadonly=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${startDate }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" /><font color=\"red\">*</font>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"isSearch\" value=\"1\" />\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"type\" value=\"1\" />\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"status\" value=\"3\" />\r\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"url\" value=\"ssadmin/capitaloperationReport\" />\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t<td>结束日期： <input type=\"text\" name=\"endDate\" class=\"date\"\r\n");
      out.write("\t\t\t\t\t\treadonly=\"true\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${endDate }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("\" /><font color=\"red\">*</font>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<div class=\"subBar\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><div class=\"buttonActive\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"buttonContent\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"submit\">查询</button>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("</div>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"capitalOperationReport\"\r\n");
      out.write("\t\tstyle=\"min-width: 310px; height: 400px; margin: 0 auto\"></div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

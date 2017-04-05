<%-- 
    Document   : image
    Created on : Nov 17, 2013, 10:04:03 AM
    Author     : Smit
--%>

<%@page import="com.struts.getset"%>
<%@page import="com.youva.util.DBOperations"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.youva.base.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             
          String p= getset.getInstance().getL();
          ConnectionManager con=new ConnectionManager();
                       Map map1 = new LinkedHashMap();
                       map1.put("eid", p);
                     BufferedOutputStream b=null;
                      Blob v=DBOperations.performSelectIMGOperation("img", map1, con);
                    
                    int k=(int)v.length();
                      byte[] j=new byte[k];
                      j=v.getBytes(1,k);
                       b=new BufferedOutputStream(response.getOutputStream(),k);
                       b.write(j);
                       %>
    </body>
</html>

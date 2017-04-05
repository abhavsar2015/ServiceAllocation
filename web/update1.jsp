<%@page import="com.struts.getset"%>
<%@page import="javax.servlet.ServletContext"%>
<%@page import="java.awt.image.BufferedImageOp"%>
<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.Image"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.youva.util.DBOperations"%>
<%@page import="com.youva.base.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen,projection" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%String p= request.getParameter("id");

ConnectionManager con=new ConnectionManager();
          
          out.println("<div align='top'>");
                       out.println("<h2>Update Form</h2>");
                       out.println("<form action='upd.action' >");                  
                  
                   out.println("<table border='2'>");
              request.setAttribute("id", request.getParameter("id"));
                 DBOperations d=new DBOperations();
                 Map map = new LinkedHashMap();
            map.put("a",p);
           Iterator ia=d.view("id",con,map).iterator();
            while(ia.hasNext()){
        
             String t[]=((String)ia.next()).split(",");               
            for(int i=0;i<t.length;i++)
                               {
                                   
                               if(i==0)
                                       {
                                           
                     out.println("<tr>Employee ID:");                  
           out.println("<tr><input type='text' readonly   name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }if(i==1)
                                       {
                                           
                     out.println("<tr>First_name:&nbsp&nbsp");                  
           out.println("<tr><input type='text' key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }if(i==2)
                                       {
                                           
                     out.println("<tr>Last_name:&nbsp&nbsp");                  
           out.println("<tr><input type='text' key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }if(i==3)
                                       {
                                           
                     out.println("<tr>Email_Id:&nbsp&nbsp&nbsp&nbsp&nbsp");                  
           out.println("<tr><input type='text' key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }if(i==4)
                                       {
                                           
                     out.println("<tr>Username:&nbsp&nbsp&nbsp");                  
           out.println("<tr><input type='text' key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }if(i==5)
                                       {
                                           
                     out.println("<tr>Password:&nbsp&nbsp&nbsp&nbsp");                  
           out.println("<tr><input type='text' key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }if(i==6)
                                       {
                                           
                     out.println("<tr>Created By:&nbsp");                  
           out.println("<tr><input type='text' key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }
                                       if(i==7)
                                       {
                        out.println("<tr>Account Type:&nbsp");                  
           out.println("<tr><input type='text' readonly key='c"+i+"' name='r"+i+"' value='"+t[i]+"'/></tr></br></br>");
                                       }        
                               }}
            out.println("<input type='submit' method='upd' class='button' value='Update'/>&nbsp<input type='reset' value='Reset' class='button'/>");
            out.println("</table>");
            out.println("</div>");
            out.println("</form>");
          
          
                     
        %>
       
    </body>
</html>

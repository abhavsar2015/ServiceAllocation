<%-- 
    Document   : menu
    Created on : Sep 17, 2013, 10:20:57 PM
    Author     : swaminarayan
--%>

<%@page import="java.sql.Blob"%>
<%@page import="com.youva.util.DBOperations"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.youva.base.ConnectionManager"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    <link href="newcss.css" rel="stylesheet" type="text/css" />

<link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />

    </head>
    <body>
       
        <div align="left" id="templatemo_menu_wrapper" >

    <div align="left" id="templatemo_menu" >
   
        <ul>
          
            <li> <a href="index.jsp" >Home</a></li>
            <li><a href="<s:url action="login.action"/>">Login</a></li>
            <li><a href="<s:url action="rej.action"/>">Registration</a></li>
            <li><a href="<s:url action="ab.action"/>">About Us</a></li>
            <li><a href="<s:url action="con.action"/>">Contact Us</a></li>
            <li><a href="<s:url action="up.action"/>">Update</a></li>
            <li><a href="<s:url action="ser.action"/>">Service</a></li>
            <li><a href="<s:url action="ser1.action"/>">ServiceDocRel</a></li>
            <li><a href="<s:url action="ser2.action"/>">ServiceAccountRel</a></li>
            <li><a href="<s:url action="ser3.action"/>">ServiceRequesterType</a></li>
            <li><a href="<s:url action="ser4.action"/>">ServiceStatus</a></li>
            <li><a href="<s:url action="ser5.action"/>">ServiceType</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
</div>  
    </body>
</html>

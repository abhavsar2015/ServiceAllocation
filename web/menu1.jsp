<%-- 
    Document   : menu1
    Created on : Oct 18, 2013, 9:16:50 AM
    Author     : Smit
--%>
<%@page import="com.struts.getset"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <a href="<s:url action="editImg.action"/>"><img src="image?id=<%=getset.getInstance().getL()%>" height="100" width="180" ></a>
        <div align="left" id="templatemo_menu_wrapper" >

    <div align="left" id="templatemo_menu" >
         
            
            
    
        <ul>
          
            <li> <a href="index.jsp" >Home</a></li>
            <li><a href="<s:url action="login.action"/>">Logout</a></li>
            <li><a href="<s:url action="rej.action"/>">Registration</a></li>
            <li><a href="<s:url action="ab.action"/>">About Us</a></li>
            <li><a href="<s:url action="con.action"/>">Contact Us</a></li>
            <li><a href="<s:url action="up.action"/>">Update</a></li>
            <li><a href="<s:url action="ser.action"/>">Service</a></li>
            <li><a href="<s:url action="ser1.action"/>">ServiceDocRel</a></li>
            <li><a href="<s:url action="ser2.action"/>">ServiceAccountRel</a></li>
            <li><a href="<s:url action="ser3.action"/>">ServiceRequestType</a></li>
            <li><a href="<s:url action="ser4.action"/>">ServiceStatus</a></li>
            <li><a href="<s:url action="ser5.action"/>">ServiceType</a></li>
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
</div>  
    </body>
</html>

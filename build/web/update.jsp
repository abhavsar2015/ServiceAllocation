<%-- 
    Document   : update
    Created on : Oct 25, 2013, 12:24:50 AM
    Author     : nikunj
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="keywords" content="" />
<meta name="description" content="" />
<link href="newcss.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />

        <title>JSP Page</title>
    </head>
  
    <body>
        <div  align="center">
        <s:form action="upp.action" method="post" >
	<s:textfield name="id" key="i" size="20" />
        <s:submit method="upp" key="enter" align="center" cssClass="button" />
      </s:form>
    <s:actionerror />
        </div>
    </body>
</html>

  
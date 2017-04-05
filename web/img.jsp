<%-- 
    Document   : img
    Created on : Nov 1, 2013, 12:07:23 PM
    Author     : Smit
--%>
<%@page import="com.struts.UpdateAction"%>
<%@page import="com.struts.getset"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet" type="text/css" media="screen,projection" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
     <img src="image?id=<%=getset.getInstance().getL()%>" height="100" width="165" />
     <s:form action="upImg.action" method="post" enctype="multipart/form-data" >
         <s:file key="editImg" name="upI"  />
                 <s:submit  method="upImg" align="center" cssClass="button"/>
     </s:form>    
        </div>
    </body>
</html>

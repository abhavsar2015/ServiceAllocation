<%-- 
    Document   : demo
    Created on : Nov 5, 2013, 12:46:42 AM
    Author     : Smit
--%>
<%@page import="oracle.net.aso.s"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Dark Login Form</title>
  <link rel="stylesheet" href="css/style.css">
  <link href="login.css" rel="stylesheet" type="text/css" />
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body id="home">
 
  <div align="center">
   
      <div class="rain">
			<div class="border start">  
    <s:form  action="login1.action" method="post" >
	<s:textfield name="username" key="label.username"  size="20" />
	<s:password name="password" key="label.password" size="20" />
        
      
 
      
  </div>
   </div>
          <s:submit method="login1" key="label.login"  cssClass="button"/>
        </s:form>
                        </div>
</body>
</html>

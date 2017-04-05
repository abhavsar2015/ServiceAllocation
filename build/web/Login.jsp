<%-- 
    Document   : Login
    Created on : Sep 16, 2013, 12:05:13 PM
    Author     : Smit
--%>

<%@page import="com.youva.util.DBOperations"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="keywords" content="" />
<meta name="description" content="" />
<link href="newcss.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="screen,projection" />
<link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />

    </head>
    
    <body>
  
        <table>
            <tr><td><s:actionerror /></td><td>
                   
</td></tr>
        </table>    

    
<div align="center">
    <table >
    <form  action="login1.action" method="post" >
    
    
        Username:<input type="text" name="username" key="label.username"  size="20"  /></br>
        Password:&nbsp;<input type="password" name="password" key="label.password" size="20" /></br>
        </br>
      
        <input type="submit" method="login1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />
   
       
      
         </br>You didn't do any registration then:<a href="<s:url action="rej.action"/>">SignUp</a>  
    </form> 

   
</table></div>
  

</body>
</html>
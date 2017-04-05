<%-- 
    Document   : service3
    Created on : Dec 23, 2013, 9:07:50 PM
    Author     : Apurv
--%>
<%@taglib uri="/struts-tags" prefix="s"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen,projection" />
        <link href="newcss.css" rel="stylesheet" type="text/css" />
        <link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />
    </head>
    <body>

  
    <div align="center" id="container">    
	
<h2>Service Requester Type</h2>
<s:actionerror />
	<s:form   >	
           
            <table style="margin-left:2px;" align="top">
           
                 <tr>
		<td>
                    </td> <td><s:textfield  key="s16" name="" placeholder="Enter Service Requester Id"/></td><td><span  style="display:none";>Please Enter Service Requester Id</span></td>
                
                </tr>
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="s17" name="Service Requester Name" placeholder="Enter Service Requester Name"/></td><td><span id="s1" style="display:none";>Please Enter your Service Requester Name</span></td>
                
                </tr>
		
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="s18" name="Service Requester Description" placeholder="Enter Service Requester Description"/></td><td><span id="s1" style="display:none";>Please Enter your Service Requester Description</span></td>
                
                </tr>
		
                
		
                
 <%//                    <s:submit  method="rej1" onClick="f()" align="center" cssClass="button" /><br/><s:reset  value="Reset" align="center" cssClass="button" /></td></tr>
               %>
   
                
                
</table>		
            <input type="submit" method="rej1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />

                </s:form>               
        </div>
</body>
</html>

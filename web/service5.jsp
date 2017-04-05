<%-- 
    Document   : service5
    Created on : Dec 23, 2013, 9:08:14 PM
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
	
<h2>Service Type</h2>
<s:actionerror />
	<s:form   >	
           
            <table style="margin-left:2px;" align="top">
           
                 <tr>
		<td>
                    </td> <td><s:textfield  key="s22" name="" placeholder="Enter Service  Type Id"/></td><td><span  style="display:none";>Please Enter Service Type  Id</span></td>
                
                </tr>
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="s23" name="Service Type name" placeholder="Enter Service Type Name"/></td><td><span id="s1" style="display:none";>Please Enter your Service Type Name</span></td>
                
                </tr>
		
		
		<tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s24" name="Service Type Description" Placeholder="Enter Your Service  Type Description"/></td><td><span id="s2" style="display:none";> Enter Your Service  Type Description</span>
		</tr>
                
                
                
		
                
 <%//                    <s:submit  method="rej1" onClick="f()" align="center" cssClass="button" /><br/><s:reset  value="Reset" align="center" cssClass="button" /></td></tr>
               %>
   
                
                
</table>		
            <input type="submit" method="rej1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />

                </s:form>               
        </div>
</body>
</html>

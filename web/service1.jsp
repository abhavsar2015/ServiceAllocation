<%-- 
    Document   : service1
    Created on : Dec 23, 2013, 9:07:24 PM
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
	
<h2>ServiceDocRel</h2>
<s:actionerror />
	<s:form   >	
           
            <table style="margin-left:2px;" align="top">
           
                 <tr>
		<td>
                    </td> <td><s:textfield  key="s0" name="" placeholder="Enter Service Id"/></td><td><span  style="display:none";>Please Enter Service Id</span></td>
                
                </tr>
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="s7" name="AccountId" placeholder="Enter AccountId"/></td><td><span id="s1" style="display:none";>Please Enter your AccountId</span></td>
                
                </tr>
		
		
		<tr>
		<td>
                </td> <td><s:textarea  id="i2" key="s8" name="Document Description" Placeholder="Enter Your Document Description"/></td><td><span id="s2" style="display:none";> Enter Your Document Description</span>
		</tr>
                
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s9" name="Document Type" Placeholder="Enter Your Document Type"/></td><td><span id="s2" style="display:none";> Enter Your Document Type</span>
		</tr>
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s10" name="Document" Placeholder="Enter Your Document"/></td><td><span id="s2" style="display:none";> Enter Your Document</span>
		</tr>
                
                
                
		
                
 <%//                    <s:submit  method="rej1" onClick="f()" align="center" cssClass="button" /><br/><s:reset  value="Reset" align="center" cssClass="button" /></td></tr>
               %>
   
                
                
</table>		
            <input type="submit" method="rej1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />

                </s:form>               
        </div>
</body>
</html>

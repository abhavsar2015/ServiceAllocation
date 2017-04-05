<%-- 
    Document   : service
    Created on : Dec 23, 2013, 7:30:23 PM
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
	
<h2>Services</h2>
<s:actionerror />
	<s:form   >	
           
            <table style="margin-left:2px;" align="top">
           
                 <tr>
		<td>
                    </td> <td><s:textfield  key="s0" name="" placeholder="Enter Service Id"/></td><td><span  style="display:none";>Please Enter Service Id</span></td>
                
                </tr>
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="s1" name="Servicename" placeholder="Enter Service Name"/></td><td><span id="s1" style="display:none";>Please Enter your Service Name</span></td>
                
                </tr>
		
		
		<tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s2" name="Service Description" Placeholder="Enter Your Service Description"/></td><td><span id="s2" style="display:none";> Enter Your Service Description</span>
		</tr>
                
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s3" name="Start Date" Placeholder="Enter Your Start Date"/></td><td><span id="s2" style="display:none";> Enter Your Start Date</span>
		</tr>
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s4" name="End Date" Placeholder="Enter Your End Date"/></td><td><span id="s2" style="display:none";> Enter Your End Date</span>
		</tr>
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s5" name="Service  Date" Placeholder="Enter Your Service Date"/></td><td><span id="s2" style="display:none";> Enter Your Service Date</span>
		</tr>
                
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s6" name="Service Type" Placeholder="Enter Your Service Type"/></td><td><span id="s2" style="display:none";> Enter Your Service Type</span>
		</tr>
                
		
                
 <%//                    <s:submit  method="rej1" onClick="f()" align="center" cssClass="button" /><br/><s:reset  value="Reset" align="center" cssClass="button" /></td></tr>
               %>
   
                
                
</table>		
            <input type="submit" method="rej1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />

                </s:form>               
        </div>
</body>
       
</html>

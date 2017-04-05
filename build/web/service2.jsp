<%-- 
    Document   : service2
    Created on : Dec 23, 2013, 9:07:39 PM
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
	
<h2>Service Account Relation</h2>
<s:actionerror />
	<s:form   >	
           
            <table style="margin-left:2px;" align="top">
           
                 <tr>
		<td>
                    </td> <td><s:textfield  key="s0" name="" placeholder="Enter Service Id"/></td><td><span  style="display:none";>Please Enter Service Id</span></td>
                
                </tr>
                
                 <tr>
		<td>
                    </td> <td><s:textfield  key="s7" name="" placeholder="Enter Account Id"/></td><td><span  style="display:none";>Please Enter Account Id</span></td>
                
                </tr>
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="s11" name="ServiceRequesterType" placeholder="Enter Service Requester Type"/></td><td><span id="s1" style="display:none";>Please Enter your Service Requester Type</span></td>
                
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
                    </td> <td><s:textfield  id="i2" key="s12" name="Actual Start Date" Placeholder="Enter Your Start Date"/></td><td><span id="s2" style="display:none";> Enter Your Actual Start Date</span>
		</tr>
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s13" name="Actual End Date" Placeholder="Enter Your End Date"/></td><td><span id="s2" style="display:none";> Enter Your Actual End Date</span>
		</tr>
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s14" name="Service  Status" Placeholder="Enter Your Service Status"/></td><td><span id="s2" style="display:none";> Enter Your Service Status</span>
		</tr>
                
                
                <tr>
		<td>
                    </td> <td><s:textfield  id="i2" key="s15" name="Service Remarks" Placeholder="Enter Your Service Remarks"/></td><td><span id="s2" style="display:none";> Enter Your Service Remarks</span>
		</tr>
                
		
                
 <%//                    <s:submit  method="rej1" onClick="f()" align="center" cssClass="button" /><br/><s:reset  value="Reset" align="center" cssClass="button" /></td></tr>
               %>
   
                
                
</table>		
            <input type="submit" method="rej1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />

                </s:form>               
        </div>
</body>
</html>

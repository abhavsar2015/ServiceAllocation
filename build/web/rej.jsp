<%-- 
    Document   : rej
    Created on : Sep 23, 2013, 11:20:25 AM
    Author     : Smit
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen,projection" />
<title>LoginPage</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--  <script type="text/javascript" src="C:\MY\Study\AJT\CAM\js\cufon-yui.js"></script>
<script type="text/javascript" src="C:\MY\Study\AJT\CAM\js\cufon-quicksand.js"></script>
<script type="text/javascript" src="C:\MY\Study\AJT\CAM\js\jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="C:\MY\Study\AJT\CAM\js\script.js"></script>
<script type="text/javascript" src="C:\MY\Study\AJT\CAM\js\coin-slider.min.js"></script>-->
<script type="text/javascript">
	function f()
	{
		var v1=document.getElementById("i1");
		var v2=document.getElementById("s1");
		if(v1.value=="")
			v2.style.display="";
		else
			v2.style.display="none";
			
		var v3=document.getElementById("i2");	
		var v4=document.getElementById("s2");
		if(v3.value=="")
			v4.style.display="";
		else
			v4.style.display="none";
		
		var v5=document.getElementById("i3");
		var v6=document.getElementById("s3");

			if(v5.value=="")
				v6.style.display="";
		else
			v6.style.display="none";
						
		var v7=document.getElementById("i4");	
		var v8=document.getElementById("s4");	
				
		if(v7.value=="")
			v8.style.display="";
		else
			v8.style.display="none";
		
		var v9=document.getElementById("i5");
		var v10=document.getElementById("s5");
		
		if(v9.value=="")
			v10.style.display="";
		else
			v10.style.display="none";		
			
		var v11=document.getElementById("i6");
		var v12=document.getElementById("s6");
		
		if(v11.value=="")
			v12.style.display="";
		else
			v12.style.display="none";
			
		var v13=document.getElementById("i7");
		var v14=document.getElementById("s7");
		
		if(v13.value=="")
			v14.style.display="";
		else
			v14.style.display="none";
		
		if(v11.value==v13.value)
		{
		}
		else
			alert("Password do not match");
		
		
		var a15=document.getElementById("check");	
			if(v1.value !="")
			{
				if(v3.value !="")
				{
					if(v5.value !="")
					{
						if(v7.value !="")
						{
							if(v9.value !="")
							{
								if(a11.value !="")
								{
									if(a13.value !="")
									{
									
										if(a15.checked==true)
										{
											if(a11.value==a13.value||a13.value=="")
											{
												window.location = "Thanks.html";	
											}
									    }
									}
								}
							}
						}
					}
				}
			}
			
		
			if(a15.checked!=true)
				alert("Please Accept our terms and conditions");
	}
	
	</script>
<link href="newcss.css" rel="stylesheet" type="text/css" />

<link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />


</head>
<body>

  
    <div align="center" id="container">    
	
<h2>Registration Form</h2>
<s:actionerror />
	<s:form  action="rej1.action" method="post" enctype="multipart/form-data" >	
           
            <table style="margin-left:2px;" align="top">
           
                 <tr>
		<td>
                    </td> <td><s:textfield  id="i1" key="c0" name="Eid" placeholder="Enter Employee Id"/></td><td><span id="s1" style="display:none";>Please Enter Employee Id</span></td>
                
                </tr>
		<tr>
                    
		<td>
                    </td> <td><s:textfield  id="i1" key="c1" name="Firstname" placeholder="Enter First Name"/></td><td><span id="s1" style="display:none";>Please Enter your Name</span></td>
                
                </tr>
		
		
		<tr>
		<td>
                    </td>  <td><s:textfield  id="i2" key="c2" name="LastName" Placeholder="Enter Last Name"/></td><td><span id="s2" style="display:none";>Please Enter Your Last Name</span>
		</tr>
		<tr>
		<td>
                </td> <td><s:file key="pic" name="img"  cssStyle="button" /></td><td><span id="s4" style="display:none";>Enter Your Email-ID</span></td>
                </tr> 
               <tr>
		<td>
                    </td> <td><s:textfield  id="i4" key="email" name="Email" Placeholder="Enter Your Email"/></td><td><span id="s4" style="display:none";>Enter Your Email-ID</span></td>
		</tr>
		
		<tr>
		<td>
                    </td> <td><s:textfield  id="i5" key="username" name="user" Placeholder="Enter Your Username"/></td><td><span id="s5" style="display:none";>Please Enter your User Name</span></td>
		</tr>
		
		<tr>
		<td>
                   </td> <td><s:password  name="ps" key="password" id="i6" Placeholder="Enter your Password"/></td><td><span id="s6" style="display:none";>Please Enter your Password</span></td>
		</tr>
		
		<tr>
		<td>
                </td><td><s:password key="re_enter"  id="i7" placeholder="Enter Your Password"/></td><td><span id="s7" style="display:none";>Please RE-Enter your password</span></td>
		</tr>
		<tr>
		 <td><s:textfield  id="i1" key="c6" name="cby" placeholder="Enter Name of creator"/></td><td><span id="s1" style="display:none";>Please Enter Name of Creator</span></br></td></tr>
                <tr>
                    <td> <s:radio key="ii" name="acttype" list="{'Admin','Employee'}" /></td>
                </tr>
                   
                    
 <%//                    <s:submit  method="rej1" onClick="f()" align="center" cssClass="button" /><br/><s:reset  value="Reset" align="center" cssClass="button" /></td></tr>
               %>
   
                
                
</table>		
            <input type="submit" method="rej1" class="button" value="Submit"/>&nbsp;<input type="reset" class="button" />

                </s:form>               
        </div>
</body>
</html>


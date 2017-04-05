<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" />
</title>
<link href="newcss.css" rel="stylesheet" type="text/css" />

<link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />
</head>
<body>
 
   
   <tiles:insertAttribute name="banner" />
   <table border="0" cellpadding="0" cellspacing="0" >
       <tr> 
           <td align="left"> <tiles:insertAttribute name="menu" /></td>   
       <td align="center"  width="2000"><tiles:insertAttribute name="body" /></td>
       </tr>
   </table>
  <tiles:insertAttribute name="footer" />
   
</body>
</html>
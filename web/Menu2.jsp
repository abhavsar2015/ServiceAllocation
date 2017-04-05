<%-- 
    Document   : Menu2
    Created on : Jan 2, 2014, 12:29:26 AM
    Author     : Apurv
--%>
<%@page import="com.struts.getset"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.Blob"%>
<%@page import="com.youva.util.DBOperations"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.youva.base.ConnectionManager"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
    <link href="newcss.css" rel="stylesheet" type="text/css" />

<link href="newcss1.css" rel="stylesheet" type="text/css" media="screen,projection" />

    </head>
    <body>
       
        <div align="left" id="templatemo_menu_wrapper" >

    <div align="left" id="templatemo_menu" >
   
       
          
            
            <%
               ConnectionManager con=new ConnectionManager();
               DBOperations d=new DBOperations();
                Map map = new LinkedHashMap();
                Map map1 = new LinkedHashMap();
               Map map2 = new LinkedHashMap();
               String k=null;
               int y=1;
              
                 if(request.getParameter("username")!=null)
                {map1.put("e",request.getParameter("username"));
                    if(request.getParameter("username").equals(DBOperations.performSelectOperation("USERNAME",map1,con )) && request.getParameter("password").equals(DBOperations.performSelectOperation("PASSWORD", map1,con )))
                    {map1.put("e", request.getParameter("username"));
                     map1.put("f", request.getParameter("password"));
                     %>  <a href="<s:url action="editImg.action"/>"><img src="image?id=<%=getset.getInstance().getL()%>" height="100" width="165" ></a>
                  
                       <% if("Admin".equals(DBOperations.performSelectOperation("typecheck",map1,con)))
                        {
                            map.put("accounttype","1");
                        }
                        else
                        {
                            map.put("accounttype","2");
                            
                    } 
                        }
                }
                 else if(getset.getInstance().getP()!=null)
                 {map2.put("a", ""+getset.getInstance().getP()+"");
                   if("Admin".equals(DBOperations.performSelectOperation("typecheck1",map2,con)))
                        {
                            %><a href="<s:url action="editImg.action"/>"><img src="image?id=<%=getset.getInstance().getL()%>" height="100" width="165" ></a><%
                            map.put("accounttype","1");
                        }
                   else if("Employee".equals(DBOperations.performSelectOperation("typecheck1",map2,con)))
                        {
                            %><a href="<s:url action="editImg.action"/>"><img src="image?id=<%=getset.getInstance().getL()%>" height="100" width="165" ></a><%
                            map.put("accounttype","2");
                            
                    }  
                   
                 }
                else
                 {
               map.put("accounttype","-1");
               
                 }
                 %>   <ul> <%
                  map.put("parentid","1");
                Iterator ia=d.view("acl1",con,map).iterator();
            while(ia.hasNext()){
        
             String t[]=((String)ia.next()).split(",");    
               
               for(int i=1;i<=t.length;i++)
               {
                    
                   map.put("ordr",""+y+"");
                   y++;
                   String h=DBOperations.performSelectOperation("acl2", map, con);
                  
            %>
            <li><a href="<%=h%>"/><%=DBOperations.performSelectOperation("acl3", map, con)%></a></li>
            <% }  
               }
                %>
            
        </ul>    	
    
    </div> <!-- end of templatemo_menu -->
</div>  
    </body>
</html>

package com.struts;

import com.opensymphony.xwork2.ActionSupport;


public class LogoutAction extends ActionSupport {
     public String out()
     {
         String h=null;
          getset.getInstance().setP(h);
          return "out";
     }
    
}

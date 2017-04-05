package com.struts;
import com.opensymphony.xwork2.ActionSupport;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
public class MenuAction extends ActionSupport {
    public String login() { return "login"; }
    public String up() { return "up"; }  
    public String rej() { return "rej"; }
    public String con() { return "con"; }
    public String ab() { return "ab"; }
    public String ser() { return "ser"; }	
    public String ser1() { return "ser1"; }	
    public String ser2() { return "ser2"; }	
    public String ser3() { return "ser3"; }	
    public String ser4() { return "ser4"; }	
    public String ser5() { return "ser5"; }	
	
}

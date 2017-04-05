package com.struts;
import com.opensymphony.xwork2.ActionSupport;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;

public class RejAction extends ActionSupport {
    private int Eid;
    private String cby;
    private String Firstname;
    private String LastName;
    private String Email;
    private String user;
    private String ps;
    private File img;
    private String acttype;

    public String getActtype() {
        return acttype;
    }

    public void setActtype(String acttype) {
        this.acttype = acttype;
    }
   



    public File getImg() {
        return img;
    }

    public void setImg(File img) {
        this.img = img;
    }

    
    

private String i;
 
   public int getEid() {
        return Eid;
    }

    public void setEid(int Eid) {
        this.Eid = Eid;
    }

    public String getCby() {
        return cby;
    }

    public void setCby(String cby) {
        this.cby = cby;
    }

    public String getFirstname() {
        return Firstname;
    }

    public void setFirstname(String Firstname) {
        this.Firstname = Firstname;
    }

    public String getLastName() {
        return LastName;
    }

    public void setLastName(String LastName) {
        this.LastName = LastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps;
    }
                  
public String rej1() throws Exception,IOException{
      ConnectionManager con = new ConnectionManager();
    Map map = new LinkedHashMap();
     map.put("a",this.Eid);
     int l=this.Eid;
    if(DBOperations.performSelectOperation("sel", map, con)==null )
    {
    if(this.img==null)
    {
        this.img=new File("C:\\Users\\Smit\\Desktop\\aph\\web\\images\\default.jpg");
    }
       FileInputStream fs=new FileInputStream(this.img);
       
    
          
            
            Map map1 = new LinkedHashMap();
            map.put("a",this.Eid);
            map.put("b",this.Firstname);
            map.put("c",this.LastName);
            map1.put("img",fs);
            map1.put("eid",this.Eid);
            map.put("d",this.Email);
            map.put("e",this.user);
            map.put("f",this.ps);
            map.put("g",this.cby);
            map.put("h",this.acttype);
         
            if(DBOperations.performInsertOperation("employee2",map,con)==true && DBOperations.performInsertOperation("image4", map1, con))
            {
                return "succ";
            }
            else
            {
                addActionError(getText("err.Registration"));
			return "err";
            }
    }  
    else
    {
       addActionError(getText("er.Registration"));
        return "err";
    }
    }
}
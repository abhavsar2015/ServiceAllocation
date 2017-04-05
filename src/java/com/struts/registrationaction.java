package com.struts;
import com.opensymphony.xwork2.ActionSupport;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.util.LinkedHashMap;
import java.util.Map;
public class registrationaction extends ActionSupport {
     private int Eid;

    public int getEid() {
        return Eid;
    }

    public void setEid(int Eid) {
        this.Eid = Eid;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
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

    public String getCby() {
        return cby;
    }

    public void setCby(String cby) {
        this.cby = cby;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPs() {
        return ps;
    }

    public void setPs(String ps) {
        this.ps = ps;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    private String cby;
    private String Firstname;
    private String LastName;
    private String Email;
    private String user;
    private String ps;
    private String username;
    private String password;
   

public String rej1() throws Exception{
            ConnectionManager con = new ConnectionManager();
            Map map = new LinkedHashMap();
            map.put("a",this.Eid);
            map.put("b",this.Firstname);
            map.put("c",this.LastName);
            map.put("d",this.Email);
            map.put("e",this.user);
            map.put("f",this.ps);
            map.put("g",this.cby);
            if(DBOperations.performInsertOperation("employee2",map,con)==true)
            {
                return "succ";
            }
            else
            {
                addActionError(getText("err.Registration"));
			return "err";
            }
}
}
package com.struts;
import com.opensymphony.xwork2.ActionSupport;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletException;

public class LoginAction extends ActionSupport{
    private String username;
    private String password;
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
  
    public String login1() throws Exception ,ServletException{
                ConnectionManager con = new ConnectionManager();
                Map map = new LinkedHashMap();
                Map map1 = new LinkedHashMap();
                map1.put("e", this.username);
                String h=DBOperations.performSelectOperation("selid", map1, con);
                map.put("e",this.username);
                getset.getInstance().setL(h);
                 getset.getInstance().setP(h);
		if (this.username.equals(DBOperations.performSelectOperation("USERNAME",map,con )) && this.password.equals(DBOperations.performSelectOperation("PASSWORD", map ,con ))) 
                {
                        
                  addActionError(getText("erro.login"));
                   return "success";
		} else {
		      	addActionError(getText("error.login"));
			return "error";
		}

	}

}

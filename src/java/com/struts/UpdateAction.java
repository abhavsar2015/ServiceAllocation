package com.struts;
import com.opensymphony.xwork2.ActionSupport;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.io.OutputStream;
import java.sql.Blob;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class UpdateAction extends ActionSupport{
     private String r0;
     private String r1;  
     private String r2;
     private String r3;
     private String r4;
     private String r5;
     private String r6;
     public String id;
     public String i;
public String getI() {
        return this.id;
    }
   
    public String getId() {
        return id;
    }
  
    public void setId(String id) {
        this.id = id;
    }
    public String getR0() {
        return r0;
    }

    public void setR0(String r0) {
        this.r0 = r0;
    }

    public String getR1() {
        return r1;
    }

    public void setR1(String r1) {
        this.r1 = r1;
    }

    public String getR2() {
        return r2;
    }

    public void setR2(String r2) {
        this.r2 = r2;
    }

    public String getR3() {
        return r3;
    }

    public void setR3(String r3) {
        this.r3 = r3;
    }

    public String getR4() {
        return r4;
    }

    public void setR4(String r4) {
        this.r4 = r4;
    }

    public String getR5() {
        return r5;
    }

    public void setR5(String r5) {
        this.r5 = r5;
    }

    public String getR6() {
        return r6;
    }
 
    public void setR6(String r6) {
        this.r6 = r6;
    }
      public String upp() throws Exception {
          ConnectionManager con = new ConnectionManager();
            Map map = new LinkedHashMap();
        
         
            map.put("a",this.id);
           HttpServletRequest re=null;             
           
           if(DBOperations.performSelectOperation("sel", map, con)!=null)
          {    
             
              System.out.println(this.id);
              return "upp";
         }
         else
          {
              addActionError(getText("err.update"));
              return "err";
          }
      }
      public String upd() throws Exception{
            ConnectionManager con = new ConnectionManager();
            Map map = new LinkedHashMap();
            
            map.put("b",this.r1);
            map.put("c",this.r2);
            map.put("d",this.r3);
            map.put("e",this.r4);
            map.put("f",this.r5);
            map.put("g",this.r6);
            map.put("a",this.r0);
            if(DBOperations.performUpdateOperation("employee2", map, con,"u")==true)
            {
                return "succ";
            }
            else
            {
                addActionError(getText("err.up"));
			return "err";
            }
       
   }
    
}

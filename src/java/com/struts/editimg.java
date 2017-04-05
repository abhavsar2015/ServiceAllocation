package com.struts;

import com.opensymphony.xwork2.ActionSupport;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.io.File;
import java.io.FileInputStream;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

public class editimg extends ActionSupport{
  private String id;
  private File upI;

    public File getUpI() {
        return upI;
    }

    public void setUpI(File upI) {
        this.upI = upI;
    }
     
       
     public String editImg() {
   
      return "editImg"; }
     
     public String upImg() throws Exception {
         ConnectionManager con=new ConnectionManager();
          Map map = new LinkedHashMap();
           FileInputStream fs=new FileInputStream(this.upI);
          map.put("img", fs);
          map.put("eid", getset.getInstance().getL());
      DBOperations.performUpdateOperation("image4", map,con, "upImg");
      return "upImg"; }
     
}

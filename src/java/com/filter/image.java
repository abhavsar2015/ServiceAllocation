package com.filter;
import com.youva.base.ConnectionManager;
import com.youva.util.DBOperations;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.imageio.stream.ImageInputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class image extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     * @throws Exception
     */
    @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("image/jpg");
       
        try 
        {
          String p= request.getParameter("id");
          ConnectionManager con=new ConnectionManager();
                       Map map1 = new LinkedHashMap();
                       map1.put("eid", p);
                     BufferedOutputStream b=null;
                      Blob v=DBOperations.performSelectIMGOperation("img", map1, con);
                    
                    int k=(int)v.length();
                      byte[] j=new byte[k];
                      j=v.getBytes(1,k);
                       b=new BufferedOutputStream(response.getOutputStream(),k);
                       b.write(j);
                      
        } catch (Exception ex) {
          
        }
    }
  
  
}

package apb;

import java.io.File;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Timer;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author dhruv_000
 */
public class Apb implements Runnable{

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        try
        {
            int TX_CHAR = 0;
            int MTU =0;
            Scanner s = new Scanner(new File("C:\\Users\\Apurv\\Downloads\\Configuration.txt"));
            ArrayList<String> a = new ArrayList<>();

            while(s.hasNext())
            {
                a.add(s.next());
                //System.out.println(s.nextLine());
            }
            //System.out.println(a.get(1));

             TX_CHAR = Integer.parseInt(a.get(1));
             System.out.println(TX_CHAR);
             MTU = Integer.parseInt(a.get(3));
             System.out.println(MTU);
             for(int i=0; i<a.size(); i++)
             {
                 System.out.println("a["+i+"] = "+a.get(i));
             }
             char[] l=null;
             String[] startTime = new String[a.size()/4];
             String[] startNode = new String[a.size()/4];
             String[] message = new String[a.size()/4];
             String[] destinationNode = new String[a.size()/4];
             for(int i=4,j=0; i<a.size();)
             {
                 //System.out.println("a["+i+"] = "+a.get(i));
                 startTime[j] = a.get(i++);
                 //System.out.println("st time"+startTime[j]);
                 startNode[j] = a.get(i++);
                 //System.out.println("st node"+startNode[j]);
                 message[j] = a.get(i++);
                 //System.out.println("msg"+message[j]);
                 destinationNode[j++] = a.get(i++);
                 //System.out.println("des node"+destinationNode[j]);
             }
             int r=0;
             int p=0;
             System.out.println(message[1]);
             Timer t= new Timer();
        StringBuilder sb = new StringBuilder();
        int o=0;    
                String[] h=new String[100];
      for(int i=0;i<=message[1].length()-1;i++)
          {  
           //System.out.println(message[1].charAt(i));
          sb.append(message[1].charAt(i));
          o++;
        if(o==MTU && p==0)
         {
           System.out.println(sb.toString());
        h[r++]=sb.toString();
           p=1;
           o=0;
         }
     else if(i>MTU && p==1)
         {
           sb.delete(0, MTU);
           p=0;
         }
     else if(i==message[1].length()-1)
      {
        h[r++]=sb.toString();
        System.out.println(sb.toString());
        sb.toString();
      }
   }  
      System.out.println(h[1]);
      System.out.println("l");
      
      //l[i]=message[1].charAt(i);
        // System.out.println(l[i]);
      
   
            }
       catch(Exception e)
        {
            System.out.println(e.toString());
        }
    }

    @Override
    public void run() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
    


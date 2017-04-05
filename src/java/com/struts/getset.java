package com.struts;
public class getset {

private String data;
private String data1;
private static getset getSet;

private getset()
{
    
}
public String getL() {
        return data;
    }

    public void setL(String l) {
        data = l;
    }
 public String getP() {
        return data1;
    }

    public void setP(String l) {
        data1= l;
    }
    public static getset getInstance()
    {
        if(null==getSet)
          getSet=new getset();
            return getSet;
        
            }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RCPL;

import java.sql.*;
public class hadoop {
    public static ResultSet getData(String query){
        try{
            Class.forName("org.apache.hive.jdbc.HiveDriver");
            String url = "jdbc:hive2://192.168.237.128:10000/project";
            Connection con = DriverManager.getConnection(url,"","");
    	 Statement st = con.createStatement();
         ResultSet rs = st.executeQuery(query);
         return rs;
         
        }
        catch(Exception e) {
            System.out.println("error found :"+e.getMessage());
            return null;
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author SOM
 */
import com.mysql.jdbc.*;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
public class MyCon {
    static Connection con=null;
    static {
    try{
    Class.forName("com.mysql.jdbc.Driver");
           } catch (ClassNotFoundException ex) {
            Logger.getLogger(MyCon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public static Connection getConnection() throws SQLException{
       try{     
           java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Restaurant","root","");
       }
       catch(Exception e){
           System.out.println(e);
       }
       
    return con;
    }}
    

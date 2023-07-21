/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pkg;

/**
 *
 * @author User
 */
import java.sql.*;
public class connect {
    
    public Connection con = null;
    
    public connect(){
        try{
            Class.forName("org.postgresql.Driver");
        }
        catch(Exception e){
            System.out.println(e.toString());
        }
    }
    
    public Connection createConnection(){
        try{
            con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres","postgres","Shreyash1410");
            
        }
        catch(Exception e){
            System.out.println(e.toString());
        }
        return con;
    }
    
    public void closeConnection(){
        try{
            con.close();
        }
        catch(Exception e){
            
        }
    }
}


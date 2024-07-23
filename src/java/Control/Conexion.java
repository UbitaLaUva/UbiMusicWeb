/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control;
import java.sql.*;

/**
 *
 * @author Pilum
 */
public class Conexion {
    

    public static Connection getConnection(){
        String url, username, password;
        
        url="jdbc:mysql://localhost:3306/ubimusic";
        username = "root";
        password = "root";
        
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection(url, username, password);
            System.out.println("CONECTION EXITOSA");
        } catch (Exception e) {
            System.out.println("error de conexion");
            System.out.println(e.getMessage());
        }
        return con;
    }
}

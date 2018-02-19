/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;


import java.sql.DriverManager;
import com.mysql.jdbc.Connection;
import java.sql.SQLException;

public class Conexion {
    
    public static final String USERNAME = "root";
    public static final String PASSWORD = "colacho23";
    public static final String HOST = "127.0.0.1";
    public static final String PORT = "3306";
    public static final String DATABASE = "Progra2";
    public static final String CLASSNAME = "com.mysql.jdbc.Driver";
    public static final String URL= "jdbc:mysql://"+ HOST + ":" + PORT + "/" + DATABASE;
    
    public java.sql.Connection con;
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e){
            System.out.println("Clase");
        } catch (SQLException e){
            System.out.println("SQL" + e.getMessage());
            
        }
    }

}


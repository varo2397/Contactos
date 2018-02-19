/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author varo
 */
public class Consultas extends Conexion{

    
    public ArrayList<Linea> frecuenciaPalabras(String palabra) throws SQLException
    {
        ArrayList<Linea> palabras = new ArrayList();
        Statement st = con.createStatement();
        ResultSet rs = null;
        
        //consulta para sacar la frecuencia y sitio de la palabra deseada
        String consulta = "select s.sitio as sitio,\n" +
                          "p.palabras as palabras,\n" +
                          "f.frecuencia as frecuencia\n" +
                          "from PalabrasPorSitio f\n" +
                          "inner join Palabras p on f.id_palabra = p.id_palabra\n" +
                          "inner join Sitios s on f.id_sitio = s.id_sitio\n" +
                          "where p.palabras = '"+ palabra +"';";
        rs = st.executeQuery(consulta);
        try
        {
            while(rs.next())
            {
                Linea l = new Linea();
                l.setPalabra(rs.getString("palabras"));
                l.setSitio(rs.getString("sitio"));
                l.setFrecuencia(rs.getInt("frecuencia"));
                palabras.add(l);                
            }
        }
        catch(SQLException e)
        {
            e.printStackTrace();
        }              
        
        return palabras;
    }    
    
    
}

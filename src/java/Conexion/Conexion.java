

package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Conexion {
     
    public static Conexion instance;
    
    private Connection cnn;
    
    private Conexion(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cnn = DriverManager.getConnection("jdbc:mysql://localhost:3306/farmacia?zeroDateTimeBehavior=convertToNull","root", "");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       
    }
    
    public synchronized static Conexion SaberEstado(){
        
        if (instance == null) {
            
            instance = new Conexion();
        }
        
        return  instance;
    }

    public Connection getCnn() {
        return cnn;
    }

   
    
    public void cerrarConexion(){
        
        instance = null;
    }

}

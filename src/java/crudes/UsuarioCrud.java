

package crudes;

import Clases.Usuario;
import Conexion.Conexion;
import Interfaces.Metopad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class UsuarioCrud implements Metopad<Usuario>{
    
    private static final String SQL_INSERT  = "INSERT INTO usuario (rut, nombre,ip, edad) VALUES (?, ? , ?, ?)";
    private static final String SQL_DELETE  = "DELETE FROM usuario WHERE rut = ?";
    private static final String SQL_UPDATE  = "UPDATE usuario SET nombre = ?, ip = ?, edad = ? WHERE rut = ?";
    private static final String SQL_READ    = "SELECT * FROM usuario WHERE rut= ?";
    private static final String SQL_READALL = "SELECT * FROM usuario";
    private static final String SQL_VERIFICAR    = "SELECT * FROM usuario WHERE rut= ?";
    
    private static final Conexion con = Conexion.SaberEstado();
    
    @Override
    public boolean create(Usuario d) {
        
               
              PreparedStatement ps;
        
        try {
           
            
            ps = con.getCnn().prepareStatement(SQL_INSERT);
            ps.setString(1, d.getRut());
            ps.setString(2, d.getNombre());
            ps.setString(3, d.getIp());
            ps.setInt(4, d.getEdad());
            
            
            if (ps.executeUpdate()>0) {
                
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioCrud.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
           con.cerrarConexion();
        }
        
        return  false; 
    }

    @Override
    public boolean delete(Object key) {
                      PreparedStatement ps;
         
        try {
           
            
            ps = con.getCnn().prepareStatement(SQL_DELETE);
            ps.setString(1, key.toString());
            
            if (ps.executeUpdate()>0) {
                
                return true;
            }
            
            return false;
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioCrud.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        
        return false;
    }

    @Override
    public boolean update(Usuario d) {
               
          PreparedStatement ps;
        
        try {
            
            
            ps = con.getCnn().prepareStatement(SQL_UPDATE);
            
            ps.setString(1, d.getNombre());
            ps.setString(2, d.getIp());
            ps.setInt   (3, d.getEdad());
            ps.setString(4, d.getRut());
            
            if (ps.executeUpdate()>0) {
                
                return  true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioCrud.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            
            con.cerrarConexion();
        }
        
        return  false;
    }

    @Override
    public int verificador(Usuario d) {
              
        
       PreparedStatement ps;
       ResultSet res;
       
        try {
          ps = con.getCnn().prepareStatement(SQL_VERIFICAR);
          ps.setString(1, d.getRut());
          
          res = ps.executeQuery();
          
          if (res.next()) {
            
            return 1;
        }
        else{
            return 0;
        }
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioCrud.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            
            con.cerrarConexion();
        }
        
        return 0;
    }

    @Override
    public Usuario read(Object key) {
        
                
        Usuario u = null;
        PreparedStatement ps;
        ResultSet res; 
        
        try {
                       
            ps = con.getCnn().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());
            
            res = ps.executeQuery();
            
            while (res.next()) {
                
           u = new Usuario(res.getString(1), res.getString(2), res.getString(3), res.getInt(4));
              
                   
            }
            
            return u;
            
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            con.cerrarConexion();
        }
        
        return u;
    }

    @Override
    public List<Usuario> readall() {
       
                  PreparedStatement ps;
          ResultSet res;  
          
         ArrayList<Usuario> user = new ArrayList<>();
        
         try {
          
             ps = con.getCnn().prepareStatement(SQL_READALL);
             res = ps.executeQuery();
            
            while (res.next()) {
              
                user.add(new Usuario(res.getString(1) ,res.getString(2), res.getString(3), res.getInt(4)));
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioCrud.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
             con.cerrarConexion();
         }
        return user;
    }

}

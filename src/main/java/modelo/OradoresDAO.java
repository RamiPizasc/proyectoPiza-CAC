package modelo;
import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OradoresDAO {
    
    Connection conexion;
    
    public OradoresDAO(){
        Conexion con = new Conexion();
        conexion = con.getConexion();
    }
    public List<Oradores> listarOradores(){
        PreparedStatement ps;
        ResultSet rs;
        List<Oradores> lista = new ArrayList<>();
        
        try{
            ps = conexion.prepareStatement("SELECT * FROM oradores");
            rs = ps.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String nombres = rs.getString("nombres");
                String apellidos = rs.getString("apellidos");
                String exposicion = rs.getString("exposicion");
                Oradores oradores = new Oradores(id,nombres,apellidos,exposicion);
                lista.add(oradores);
            }
            return lista;
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    
    public Oradores mostrarOrador(int _id){
        PreparedStatement ps;
        ResultSet rs;
        Oradores orador = null;
        
        try{
            ps = conexion.prepareStatement("SELECT id,nombres,apellidos,exposicion FROM oradores Where id = ?");
            ps.setInt(1, _id);
            rs = ps.executeQuery();
            
            while(rs.next()){
                int id = rs.getInt("id");
                String nombres = rs.getString("nombres");
                String apellidos = rs.getString("apellidos");
                String exposicion = rs.getString("exposicion");
                orador = new Oradores(id,nombres,apellidos,exposicion);
            }
            return orador;
            
        }catch(SQLException e){
            System.out.println(e.toString());
            return null;
        }
    }
    
    public boolean insertarOrador(Oradores orador){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement(
                    "INSERT INTO oradores(nombres,apellidos,exposicion)VALUES(?,?,?)");
            ps.setString(1,orador.getNombres());
            ps.setString(2,orador.getApellidos());
            ps.setString(3,orador.getExposicion());
            ps.execute();
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean actualizarOrador(Oradores orador){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement("UPDATE oradores SET nombres=?, apellidos=?, exposicion=? WHERE id=?");
            ps.setString(1,orador.getNombres());
            ps.setString(2,orador.getApellidos());
            ps.setString(3,orador.getExposicion());
            ps.setInt(4,orador.getId());
            ps.execute();
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    
    public boolean eliminarOrador(int _id){
        PreparedStatement ps;
        try{
            ps = conexion.prepareStatement("DELETE FROM oradores WHERE id=?");
            ps.setInt(1, _id);
            ps.execute();
            return true;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
    public boolean ingresarUsuario(String usuario, String clave){
        PreparedStatement ps;
        ResultSet rs;
        try{
            ps = conexion.prepareStatement("SELECT email, password FROM usuarios WHERE email=?");
            ps.setString(1, usuario);
            rs = ps.executeQuery();
            
            while(rs.next()){
                return usuario.equals(rs.getString("email")) && clave.equals(rs.getString("password"));
            }return false;
        }catch(SQLException e){
            System.out.println(e.toString());
            return false;
        }
    }
}

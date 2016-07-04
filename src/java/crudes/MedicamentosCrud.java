package crudes;

import Clases.Medicamentos;
import Conexion.Conexion;
import Interfaces.Metopad;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class MedicamentosCrud implements Metopad<Medicamentos> {

    private static final String SQL_INSERT = "INSERT INTO medicamento (codigo, nombre, stock, precio, tipo) VALUES (?,?,?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM medicamento WHERE codigo = ?";
    private static final String SQL_UPDATE = "UPDATE medicamento SET nombre = ?, stock = ?, precio = ?, tipo = ? WHERE codigo = ?";
    private static final String SQL_READ = "SELECT * FROM medicamento WHERE codigo= ?";
    private static final String SQL_READALL = "SELECT * FROM medicamento";
    private static final String SQL_VERIFICAR = "SELECT * FROM medicamento WHERE codigo= ?";

    private static final Conexion con = Conexion.SaberEstado();

    @Override
    public boolean create(Medicamentos d) {
        PreparedStatement ps;

        try {

            ps = con.getCnn().prepareStatement(SQL_INSERT);
            ps.setInt(1, d.getCodigo());
            ps.setString(2, d.getNombre());
            ps.setInt(3, d.getStock());
            ps.setString(4, d.getPrecio());
            ps.setString(5, d.getTipo());

            if (ps.executeUpdate() > 0) {

                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(MedicamentosCrud.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }

        return false;
    }

    @Override
    public boolean delete(Object key) {
        PreparedStatement ps;

        try {

            ps = con.getCnn().prepareStatement(SQL_DELETE);
            ps.setInt(1, Integer.parseInt(key.toString()));

            if (ps.executeUpdate() > 0) {

                return true;
            }

            return false;
        } catch (SQLException ex) {
            Logger.getLogger(MedicamentosCrud.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }

        return false;
    }

    @Override
    public boolean update(Medicamentos d) {

        PreparedStatement ps;

        try {

            ps = con.getCnn().prepareStatement(SQL_UPDATE);

            ps.setString(1, d.getNombre());
            ps.setInt(2, d.getStock());
            ps.setString(3, d.getPrecio());
            ps.setString(4, d.getTipo());
            ps.setInt(5, d.getCodigo());

            if (ps.executeUpdate() > 0) {

                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(MedicamentosCrud.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            con.cerrarConexion();
        }

        return false;

    }

    @Override
    public int verificador(Medicamentos d) {

        PreparedStatement ps;
        ResultSet res;

        try {
            ps = con.getCnn().prepareStatement(SQL_VERIFICAR);
            ps.setInt(1, d.getCodigo());

            res = ps.executeQuery();

            if (res.next()) {

                return 1;
            } else {
                return 0;
            }

        } catch (SQLException ex) {
            Logger.getLogger(MedicamentosCrud.class.getName()).log(Level.SEVERE, null, ex);
        } finally {

            con.cerrarConexion();
        }

        return 0;
    }

    @Override
    public Medicamentos read(Object key) {

        Medicamentos pc = null;
        PreparedStatement ps;
        ResultSet res;

        try {

            ps = con.getCnn().prepareStatement(SQL_READ);
            ps.setString(1, key.toString());

            res = ps.executeQuery();

            while (res.next()) {

                pc = new Medicamentos(res.getInt(1), res.getString(2), res.getInt(3), res.getString(4), res.getString(5));

            }

            return pc;

        } catch (SQLException ex) {
            Logger.getLogger(MedicamentosCrud.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }

        return pc;
    }

    @Override
    public List<Medicamentos> readall() {

        PreparedStatement ps;
        ResultSet res;

        ArrayList<Medicamentos> med = new ArrayList<>();

        try {

            ps = con.getCnn().prepareStatement(SQL_READALL);
            res = ps.executeQuery();

            while (res.next()) {

                med.add(new Medicamentos(res.getInt(1), res.getString(2), res.getInt(3), res.getString(4), res.getString(5)));
            }

        } catch (SQLException ex) {
            Logger.getLogger(MedicamentosCrud.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            con.cerrarConexion();
        }
        return med;
    }

}

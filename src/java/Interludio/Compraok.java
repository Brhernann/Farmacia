package Interludio;

import Clases.Compra;
import Clases.Medicamentos;
import Clases.Usuario;
import Conexion.Conexion;
import crudes.CompraCrud;
import crudes.MedicamentosCrud;
import crudes.UsuarioCrud;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Compraok extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        

        Compra c = (Compra) request.getSession().getAttribute("compra");

        String fecha = c.getFecha();
        int cantidad = c.getCantidad();
        String precio = c.getPrecio();
        String rutClie = c.getRutClie();
        int codmedicina = c.getCodMedic();
        
        
        

        CompraCrud crud = new CompraCrud();
        crud.create(new Compra(fecha, cantidad, precio, rutClie, codmedicina));
        
        

        request.getSession().setAttribute("compraok", c);
        
        request.getRequestDispatcher("boleta.jsp").forward(request, response);

        Medicamentos m = (Medicamentos) request.getSession().getAttribute("medica");

        MedicamentosCrud crudm = new MedicamentosCrud();

        crudm.update(m);

        request.getSession().setAttribute("remedio", m);
        request.getRequestDispatcher("boleta.jsp").forward(request, response);
        
        //_________________________________


        
         
        
        
        //___________________________
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

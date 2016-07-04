package Interludio;

import Clases.Compra;
import Conexion.Conexion;
import crudes.CompraCrud;
import java.io.IOException;
import java.io.PrintWriter;
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



public class Mostrarventas extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String error = "";

        Compra c = new Compra();
        CompraCrud crud = new CompraCrud();
        int suma = 0;

        ArrayList<Compra> lista = (ArrayList<Compra>) crud.readall();
        
        for (int i = 0; i < lista.size(); i++) {
            
            String precio = lista.get(i).getPrecio();
           // int clientes = lista.indexOf(lista.get(i).getRutClie());
            
            int Nprecio = Integer.parseInt(precio);
           
            
            int total = suma+= Nprecio;
        //    int totalC= suma+=clientes;
            
          //  request.getSession().setAttribute("totalC", totalC);
            request.getSession().setAttribute("total", total);
            
        }


        if (lista.size() == 0) {

            error = "No hay Productos Online";

            request.getSession().setAttribute("Myerror", error);
            request.getRequestDispatcher("error.jsp").forward(request, response);
        } else {
            
            request.getSession().setAttribute("ventas", lista);
            request.getRequestDispatcher("administrador.jsp").forward(request, response);

        }
        
        
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


package Interludio;

import Clases.Medicamentos;
import crudes.MedicamentosCrud;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Modificarmedicamento extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

       
        String nombre = request.getParameter("txtnombre");
        String stock = request.getParameter("txtstock");
        String precio = request.getParameter("txtprecio");
        String tipo = request.getParameter("txttipo");
        String error = "";

        int Nstock = 0;
        

        Nstock = Integer.parseInt(stock);
        
        MedicamentosCrud crud = new MedicamentosCrud();
        
        
       
        String codigo = (String)request.getSession().getAttribute("Mycodigo");
        int Ncodigo = Integer.parseInt(codigo);
        Medicamentos m = new Medicamentos(nombre, Nstock, precio, tipo);
        m.setCodigo(Ncodigo);
        
        crud.update(m);
            
        String proceso = "Haz modificado satifactoriamente el producto";
        request.getSession().setAttribute("myProcess", proceso);
        request.getRequestDispatcher("ProcesoExistoso.jsp").forward(request, response);
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

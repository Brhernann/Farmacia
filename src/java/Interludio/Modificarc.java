
package Interludio;

import Clases.Usuario;
import crudes.UsuarioCrud;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Modificarc extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

         String  nombre = request.getParameter("txtnombre");
        String ip = request.getParameter("txtip");
        String edad = request.getParameter("txtedad");
        String error = "";
        int Nedad = Integer.parseInt(edad);
        
        UsuarioCrud crud = new UsuarioCrud();
        
        String rut = (String)request.getSession().getAttribute("Myrut");
        
        Usuario u = new Usuario(nombre, ip, Nedad);
        u.setRut(rut);
        
        crud.update(u);
        
          String proceso = "Haz modificado satifactoriamente al cliente";
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

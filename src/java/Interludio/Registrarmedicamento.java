package Interludio;



import Clases.Medicamentos;
import Conexion.Conexion;
import crudes.MedicamentosCrud;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Registrarmedicamento extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String codigo = request.getParameter("txtcodigo");
        String nombre = request.getParameter("txtnombre");
        String stock = request.getParameter("txtstock");
        String precio = request.getParameter("txtprecio");
        String tipo = request.getParameter("txttipo");
        String error = "";
        
        int Ncodigo = 0;
        int Nstock = 0;
        
        Ncodigo = Integer.parseInt(codigo);
        Nstock = Integer.parseInt(stock);
        
        MedicamentosCrud crud = new MedicamentosCrud();
        
        Medicamentos m = new Medicamentos(Ncodigo, nombre, Nstock, precio, tipo);
        
        if (crud.verificador(m)>0){
                    
                 error = "El produto ya existe!";
                 request.getSession().setAttribute("Myerror", error);
                 request.getRequestDispatcher("error.jsp").forward(request, response);       
                    
                }
        else{
        
        crud.create(new Medicamentos(Ncodigo, nombre, Nstock, precio, tipo));
        request.getSession().setAttribute("Registrado", m);
        
        String proceso = "haz Registrado el Producto Exitosamente";
        request.getSession().setAttribute("myProcess", proceso);
        request.getRequestDispatcher("ProcesoExistoso.jsp").forward(request, response);
        
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

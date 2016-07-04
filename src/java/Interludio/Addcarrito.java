package Interludio;

import Clases.Compra;
import Clases.Medicamentos;
import Clases.Usuario;
import crudes.CompraCrud;
import crudes.MedicamentosCrud;
import crudes.UsuarioCrud;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Addcarrito extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fecha = request.getParameter("txtfecha");
        String cantidad = request.getParameter("txtcantidad");
        String rutcli = request.getParameter("txtrut"); 
        String error = "";
        
        
         MedicamentosCrud crudm = new MedicamentosCrud();
         Medicamentos medicas = crudm.read(Integer.parseInt(request.getParameter("cod")));
         int codigo = medicas.getCodigo();
         String precio = medicas.getPrecio();
         String fonasa ="fonasa";
         int descuento = 10000;
         int superior = 15000;

       //_____________________________________________

        int Ncantidad = 0;
        Ncantidad = Integer.parseInt(cantidad);
       
        int multiprecio = Integer.parseInt(precio);
        
        int PrecioTotal = multiprecio*Ncantidad;
        
        String preciofinal = String.valueOf(PrecioTotal);
        
         request.getSession().setAttribute("preciofinal",preciofinal);
         //___id____fecha__cantidad___precio___rut___cod_______________________COMPRA

        Compra c = new Compra(fecha, Ncantidad, preciofinal, rutcli, codigo);
        CompraCrud crud = new CompraCrud();
   
         
        //_________________________________________CLIENTE

        UsuarioCrud crudu = new UsuarioCrud();
        Usuario u = new Usuario(rutcli);
        
        


        int stocke = medicas.getStock() - Ncantidad;
         medicas.setStock(stocke);
         request.getSession().setAttribute("medica",medicas);

         
          if (crudu.verificador(u) > 0) {

            if (medicas.getStock()>=0) {
                
                        //________________________________________________DESCUENTOFONASA
        
        Usuario desc = crudu.read(rutcli);
                        
              if (PrecioTotal>superior) {
            
              if (desc.getIp().equals(fonasa)) {
            
            int precioDescuento = PrecioTotal-descuento;
            String preciofinalisisimo = String.valueOf(precioDescuento);
            request.getSession().setAttribute("descuento", preciofinalisisimo);
            
            String nodescuento = "Usted tiene un descuento de $10.000 pesos por pertenecer a fonasa";
            request.getSession().setAttribute("descuento", nodescuento);
            c.setPrecio(preciofinalisisimo);
            
        }
              else{
              
              String nodescuento = "Descuento aplicable para personas de fonasa, Lo sentimos";
              request.getSession().setAttribute("descuento", nodescuento);
              
              }
        }
        else{
        
              String nodescuento = "Descuento aplicable con compras mayor a $15.000 pesos";
              request.getSession().setAttribute("descuento", nodescuento);
        
        }
        
         request.getSession().setAttribute("compra",c);
        //________________________________________________________

                
                request.getRequestDispatcher("detallemed.jsp").forward(request, response);
                
                

            }
            
            else{
            
                       error = "No hay productos";
                       request.getSession().setAttribute("Myerror", error);
                       request.getRequestDispatcher("error.jsp").forward(request, response);
            }
   
        }
        
        else{
        
                       error = "Rut no registrado, Registrate en nuestra pagina <a href=\"registrarusuario.jsp\">Aqui</a>";
                       request.getSession().setAttribute("Myerror", error);
                       request.getRequestDispatcher("error.jsp").forward(request, response);
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

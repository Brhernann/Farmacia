
package Clases;


public class Compra {

    int id;
    String fecha;
    int cantidad;
    String precio;
    String rutClie;
    int CodMedic;


    public Compra() {
    }

    public Compra(int id) {
        this.id = id;
    }

    public Compra(int id, int cantidad, String precio, String fecha, String rutClie, int CodMedic) {
        this.id = id;
        this.cantidad = cantidad;
        this.precio = precio;
        this.fecha = fecha;
        this.rutClie = rutClie;
        this.CodMedic = CodMedic;
    }

    public Compra(int id, String fecha, int cantidad, String precio, String rutClie, int CodMedic) {
        this.id = id;
        this.fecha = fecha;
        this.cantidad = cantidad;
        this.precio = precio;
        this.rutClie = rutClie;
        this.CodMedic = CodMedic;
    }
    
    
    

    public Compra(String fecha, int cantidad, String precio, String rutClie, int CodMedic) {
        this.fecha = fecha;
        this.cantidad = cantidad;
        this.precio = precio;
        this.rutClie = rutClie;
        this.CodMedic = CodMedic;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getRutClie() {
        return rutClie;
    }

    public void setRutClie(String rutClie) {
        this.rutClie = rutClie;
    }

    public int getCodMedic() {
        return CodMedic;
    }

    public void setCodMedic(int CodMedic) {
        this.CodMedic = CodMedic;
    }
    
    

   
}

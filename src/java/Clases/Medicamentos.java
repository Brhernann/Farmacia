
package Clases;


public class Medicamentos {
    
    int codigo;
    String Nombre;
    int stock;
    String precio;
    String Tipo;

    public Medicamentos() {
    }

    public Medicamentos(int codigo) {
        this.codigo = codigo;
    }

    public Medicamentos(int codigo, String nombre, int stock, String precio, String Tipo) {
        this.codigo = codigo;
        this.Nombre = nombre;
        this.stock = stock;
        this.precio = precio;
        this.Tipo = Tipo;
    }

    public Medicamentos(String Nombre, int stock, String precio, String Tipo) {
        this.Nombre = Nombre;
        this.stock = stock;
        this.precio = precio;
        this.Tipo = Tipo;
    }
    
    

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }
    
    
    
    
    

}

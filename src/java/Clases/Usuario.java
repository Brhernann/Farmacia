
package Clases;

import java.util.ArrayList;


public class Usuario {
    
    
    String rut;
    String nombre;
    String ip;
    int edad;
    
    public static ArrayList<Medicamentos> medicamentos = new ArrayList<>();
    //productos

    public Usuario() {
    }

    public Usuario(String rut) {
        this.rut = rut;
    }

    public Usuario(String rut, String nombre, String ip, int edad) {
        this.rut = rut;
        this.nombre = nombre;
        this.ip = ip;
        this.edad = edad;
    }

    public Usuario(String nombre, String ip, int edad) {
        this.nombre = nombre;
        this.ip = ip;
        this.edad = edad;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

  
    
    

}

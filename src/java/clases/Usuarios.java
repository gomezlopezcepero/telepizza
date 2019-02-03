/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author asus
 */
public class Usuarios {
 
    private String nombre;
    private String contra;
    private String direccion;
    private String email;
    private String telefono;

    public Usuarios(String nombre, String contra, String direccion, String email, String telefono) {
        this.nombre = nombre;
        this.contra = contra;
        this.direccion = direccion;
        this.email = email;
        this.telefono = telefono;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContra() {
        return contra;
    }

    public void setContra(String contra) {
        this.contra = contra;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    @Override
    public String toString() {
        return "Usuarios{" + "nombre=" + nombre + ", contra=" + contra + ", direccion=" + direccion + ", email=" + email + ", telefono=" + telefono + '}';
    }
    
    
    
    
}

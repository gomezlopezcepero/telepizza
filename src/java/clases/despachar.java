/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author asus
 */
public class despachar extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

             RequestDispatcher rd = null;
         ServletContext contexto=getServletContext();
            
            try{
             
           
            
            
            
            String usuario=request.getParameter("usuario");
            String contra=request.getParameter("contra");
       
       contexto.setAttribute("usuario", usuario);
       contexto.setAttribute("contra", contra);

       BdAdministrador comprobar = new BdAdministrador();
       
       comprobar.abrirConexion();
       
      boolean bulean= comprobar.comprobarExistencia(usuario, contra);
      
       boolean bulean2;
       if(bulean==true){
           
           
           HttpSession sesion = request.getSession();
                
                sesion.setAttribute("nombre", "a");
                
           
               
               rd=contexto.getRequestDispatcher("/ofertas.jsp");
       
                 rd.forward(request, response);
               
           
       }
       else{

          rd=contexto.getRequestDispatcher("/error.html");
       
       rd.forward(request, response);
           
       }

           
            }catch(Exception e){
                
               String mensaje= e.getMessage();
               
               contexto.setAttribute("mensaje", mensaje);
                
                rd=contexto.getRequestDispatcher("/error.html");
       
       rd.forward(request, response);
                
            }
            
            
        }
        
    }
    
}

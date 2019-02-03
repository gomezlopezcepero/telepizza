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
public class eleccionMenus extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        RequestDispatcher rd = null;
            ServletContext contexto=getServletContext();
        
        HttpSession sesion = request.getSession();
               long fecha;

                String nombre="";
               nombre = (String)sesion.getAttribute("nombre");

               
               if(nombre==null){
                   nombre="neato";
               }
               
              
               if(nombre.equals("neato")){
                  
                   rd=contexto.getRequestDispatcher("/index.html");
                
                rd.forward(request, response);
                   
               }
               else{
                   
                   rd=contexto.getRequestDispatcher("/pizzas.jsp");
                
                rd.forward(request, response);
                   
               }
        
        
    }
    
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
            RequestDispatcher rd = null;
            ServletContext contexto=getServletContext();
        
        String ofertas=request.getParameter("menus");
        String num=request.getParameter("num5");
            
         
        
        
             HttpSession sesion = request.getSession();
                
                
                
                sesion.setAttribute("menus", ofertas);
                sesion.setAttribute("num5", num);

                
                rd=contexto.getRequestDispatcher("/pizzas.jsp");
                
                rd.forward(request, response);
            
    }
    
    
}

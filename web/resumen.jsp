<%-- 
    Document   : resumen
    Created on : 13-dic-2016, 12:16:58
    Author     : asus
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
<%@page import="clases.BdAdministrador"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        
      
               HttpSession sesion = request.getSession();
              

                
               String nombre= (String)sesion.getAttribute("nombre");
               String ofertas= "";
               ofertas = (String)sesion.getAttribute("ofertas");
               
               String menus= "";
               menus= (String)sesion.getAttribute("menus");
               
               String pizzas2= (String)sesion.getAttribute("pizzas");
               String entrantes= (String)sesion.getAttribute("entrantes");
               String hamburguesas= (String)sesion.getAttribute("hamburguesas");
               
               String pasta= (String)sesion.getAttribute("pasta");
               String ensaladas= (String)sesion.getAttribute("ensaladas");
               String bebidas= (String)sesion.getAttribute("bebidas");
               String postre= (String)sesion.getAttribute("postres");
               
               String num1= "";
               num1= (String)sesion.getAttribute("num1");
               String num2= (String)sesion.getAttribute("num2");
               String num3= (String)sesion.getAttribute("num3");
               String num4= (String)sesion.getAttribute("num4");
               String num5= (String)sesion.getAttribute("num5");
               
               String num6= "";
               
               num6= (String)sesion.getAttribute("num6");
               String num7= (String)sesion.getAttribute("num7");
               String num8= (String)sesion.getAttribute("num8");
               String num9= (String)sesion.getAttribute("num9");
               
               
               
               
               if(ofertas==null){
                   ofertas=" ";
                   num6 ="0";
               }
               
               if(menus==null){
                   menus=" ";
                   num5 ="0";
               }
               
               if(pizzas2==null){
                   pizzas2=" ";
                   num8 ="0";
               }
               
               if(entrantes==null){
                   entrantes=" ";
                   num3 ="0";
               }
               
               if(hamburguesas==null){
                   hamburguesas=" ";
                   num4 ="0";
               }
               
               if(pasta==null){
                   pasta=" ";
                   num7 ="0";
               }
               
               if(ensaladas==null){
                   ensaladas=" ";
                   num2 ="0";
               }
               
               if(bebidas==null){
                   bebidas=" ";
                   num1 ="0";
               }
               
               if(postre==null){
                   postre=" ";
                   num9 ="0";
               }
               
               
            BdAdministrador pizzas = new BdAdministrador();
            
            
            long fecha;
               fecha = sesion.getCreationTime();
        Date fechaC = new Date(fecha);
        SimpleDateFormat formatoFecha = new SimpleDateFormat("dd/MM/yyyy kk:mm:ss");
      
            
            pizzas.abrirConexion();
       
            
           int cantidad=0;

            
        
        %>
    
    
    <form action="eleccionPasta" method="POST">

    
<table width="100%" border="0">
  <tr bordercolor="#FF0000" bgcolor="#FF0000">
    <td width="4%" bgcolor="#FFFFFF">&nbsp;</td>
    <td colspan="3" class="inicio"><a href="ofertas.jsp">Inicio </a></td>
    <td width="7%" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr bordercolor="#FF0000" bgcolor="#FF0000">
    <td width="4%" bgcolor="#FFFFFF">&nbsp;</td>
    <td colspan="3"><img src="images/images_2016/logo_telepizza.gif"  /><br />
    <a href="ofertas.jsp"><img src="images/images_2016/ofertas.gif" width="73" height="31" longdesc="http://ofertas.jsp" /></a><a href="menus.jsp"><img src="images/images_2016/menus.gif" width="66" height="31" longdesc="http://ASD" /></a><a href="pizzas.jsp"><img src="images/images_2016/pizzas.gif" width="66" height="31" longdesc="http://SDFG" /></a><a href="entrantes.jsp"><img src="images/images_2016/entrantes.gif" width="85" height="31" longdesc="http://DFGSD" /></a><a href="hamburguesas.jsp"><img src="images/images_2016/hamburguesa.gif" width="123" height="31" longdesc="http://DFGDF" /></a><a href="pasta.jsp"><img src="images/images_2016/pasta.gif" width="58" height="31" longdesc="http://DFGH" /></a><a href="ensaladas.jsp"><img src="images/images_2016/ensaladas.gif" width="94" height="31" longdesc="http://DFGH" /></a><a href="bebidas.jsp"><img src="images/images_2016/bebidas.gif" width="76" height="31" longdesc="http://SFGHDF" /></a><a href="postres.jsp"><img src="images/images_2016/postres.gif" width="70" height="31" alt="" longdesc="http://SDF" /></a></td>
        <td width="7%" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr bordercolor="#FF0000" bgcolor="#FF0000">
    <td width="4%" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="46%">&nbsp;</td>
    <td colspan="2">&nbsp;</td>
    <td width="7%" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>

   <tr align="center">
    <td width="4%" rowspan="5" bgcolor="#FFFFFF">&nbsp;</td>
    <td width="46%" rowspan="5" class="ff"><img src="images/images_2016/1_2015.gif" width="549" height="312" /></td>
    <td colspan="2" bgcolor="#333333"><img src="images/images_2016/usuarios.gif" /></td>
    <td width="7%" rowspan="5" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>

  <tr>
  <td width="25%">Tu pedido ha sido tramitado a las <%=formatoFecha.format(fechaC)%> y consta los siguientes productos:</td>
</tr>
  <% 
      if(num6.equals("0")){
      
      
  }
  else{
  %>
  <tr>
      <td>Ofertas</td>
   <td width="25%"><%=ofertas%></td>
   <td width="25%"><%=num6%></td>
  </tr>
  
  
  <%
  }
  %>
  
  <% 
      if(num5.equals("0")){
      
      
  }
  else{
  %>
  
  <tr>
      <td>Menus</td>
   <td width="25%"><%=menus%></td>
   <td width="25%"><%=num5%></td>
  </tr>
  <tr>
      <% } %>
      
        <% 
      if(num8.equals("0")){
      
      
  }
  else{
  %>
      
      
      <td>Pizzas</td>
   <td width="25%"><%=pizzas2%></td>
   <td width="25%"><%=num8%></td>
  </tr>
  
  <% } %>
  
  
  <% 
      if(num3.equals("0")){
      
      
  }
  else{
  %>
  
  <tr>
      <td>Entrantes</td>
   <td width="25%"><%=entrantes%></td>
   <td width="25%"><%=num3%></td>
  </tr>
  
  <% } %>
  
  
  
   <% 
      if(num4.equals("0")){
      
      
  }
  else{
  %>
  
  <tr>
      <td>Hamburguesas</td>
   <td width="25%"><%=hamburguesas%></td>
   <td width="25%"><%=num4%></td>
  </tr>
  
   <% } %>
  
   
   <% 
      if(num7.equals("0")){
      
      
  }
  else{
  %>
   
  <tr>
      <td>Pasta</td>
   <td width="25%"><%=pasta%></td>
   <td width="25%"><%=num7%></td>
  </tr>
  
   <% } %>
   
   
  <% 
      if(num2.equals("0")){
      
      
  }
  else{
  %> 
  
  <tr>
      <td>Ensaladas</td>
   <td width="25%"><%=ensaladas%></td>
   <td width="25%"><%=num2%></td>
  </tr>
  
  <% } %>
  
  
  <% 
      if(num1.equals("0")){
      
      
  }
  else{
  %> 
  
  <tr>
      <td>Bebidas</td>
   <td width="25%"><%=bebidas%></td>
   <td width="25%"><%=num1%></td>
  </tr>
  
   <% } %>
   <%
   if(num9.equals("0")){
      
      
  }
  else{
  %> 
  
  <tr>
      <td>postre</td>
   <td width="25%"><%=postre%></td>
   <td width="25%"><%=num9%></td>
  </tr>
  
   <% } %>
  
  
  <tr align="center">
    <td colspan="2" align="center" bgcolor="#333333" ><img src="images/images_2016/empezar.gif" width="276" height="62" /></td>
  </tr>
  <tr bgcolor="#990000" >
    <td width="4%" bgcolor="#FFFFFF">&nbsp;</td>
   <td align="left" width="46%"><img src="images/images_2016/telepizza_espana.gif" width="133" height="30" /></td>
    <td align="right" colspan="2"><img src="images/images_2016/ico_facebook.gif" width="31" height="30" /> <img src="images/images_2016/ico_twitter.gif" width="31" height="30" /> <img src="images/images_2016/ico_youtube.gif" width="31" height="30" /> <img src="images/images_2016/ico_google.gif" width="31" height="30" /> <img src="images/images_2016/ico_instagram.gif" width="31" height="30" />&nbsp; </td>
    <td width="7%" bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
</table>

        </form>
        
    <%
                

                
                %>
    
    </body>
</html>

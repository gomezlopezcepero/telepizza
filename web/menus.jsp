<%@page import="clases.BdAdministrador"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Documento sin t�tulo</title>

</style>
<style type="text/css">
.inicio {
	text-align: right;
	font-weight: bold;
}

</style>
</head>

<body>
    
    
    <%
        
       try{
               HttpSession sesion = request.getSession();
               long fecha;

                
               String nombre= sesion.getAttribute("nombre").toString();
            
            BdAdministrador pizzas = new BdAdministrador();
    
          
            
            pizzas.abrirConexion();
       
            
           int cantidad=0;

            
        
        %>
    
    
    <form action="eleccionMenus" method="POST">

    
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
    <td width="18%" class="inicio"><span class="inicio3">Menus</span></td>
    <td width="25%"><select name="menus">
        <%
            String menus = "menus";
            for(int i=0;i<pizzas.hacerConsulta(menus).size();i++){
             
            String dato= pizzas.hacerConsulta(menus).get(i);
             %>
             <option><%=dato
           
                 %></option><%}
             
             pizzas.cerrarConexion();
             %> 
    </select></td>
     <td width="5%"><select name="num5">
             <% for(int i=0;i<10;i++){
       %> <option><%=i%></option> <%
               } %>
    </select></td>
  </tr>
  <tr>
   
  </tr>
  <tr align="center">
    <td colspan="2"><input name="aceptar" type="submit" value="Elegir menu" /></td>
  </tr>
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
                }catch(Exception e){
                %><jsp:forward page="/index.html"/><%
            } 
                
                %>
    
    
</body>
</html>

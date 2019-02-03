/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author asus
 */
public class BdAdministrador {
    
    
    
	 String drv="com.mysql.jdbc.Driver";
       String url="jdbc:mysql://localhost:3306/telepizza";
      public ArrayList<String> artis; //cambiar String por la clase que vayas a necesitar
       
	Connection cn = null; //conexiones
	Statement st; //consultas
	public ResultSet rs;
	public PreparedStatement psInsertar;
	public BdAdministrador(){
		super();
		
		
	}

	public void abrirConexion() {
		// TODO Auto-generated method stub
		
		
		try{
			
			Class.forName(drv);
			cn=(Connection) DriverManager.getConnection(url, "root", "");
			st=cn.createStatement();
		}
		catch(Exception e){
			
			System.out.println("No se pudo conectar con la base de datos");
			
		}
		
	}
	
	
	public void cerrarConexion() throws SQLException {
		
		//if(rs!=null) rs.close();
		
		if(cn!=null) cn.close();
		System.out.println("Conexión cerrada");
		
	}
        
        /*
       Borra los registros seleccionados con los checkbox, recibe un arraylist de la tabla entera hecha en crearTabla(), 
        el array valueof pasado a int y el array valueof string original
        
        */
        public void borrarRegistros(ArrayList<String> artis, int[] id, String[] veves) throws SQLException{
            
            for(int i=0;i<veves.length;i++){
                
                
                
         //       String borrar = "DELETE FROM usuarios where clave = '"+artis.get(id[i]).getClave()+"'";
           //           int rs2=st.executeUpdate(borrar);
                
            }
            
        }
        
        
        //hace un select de toda la tabla, saca sus valores y los mete en un arraylist, usalo para crear tablas
         public ArrayList<String> crearTabla() throws SQLException{
            
            String consulta = "SELECT * from usuarios";
            
            ArrayList<String> artis = new ArrayList();
            
            rs=st.executeQuery(consulta);
            
       
                        
            while(rs.next()){
                
               String usuario= rs.getString("usuario");
               String clave2= rs.getString("clave");
               String nombre= rs.getString("nombre");
               String direccion= rs.getString("direccion");
               String tipo= rs.getString("tipo");
               String email= rs.getString("email");
               
          //     usuarios user = new usuarios(usuario,clave2,tipo,nombre,direccion,email);
               
          //     artis.add(user);
               
            }
            
            return(artis);
            
        }
        
         /*
        Consulta varias tablas y saca sus registros, 
        */    
         
        public ArrayList<String> consultaVariasTablas(String dato) throws SQLException{
                       
            
            String consulta = "SELECT titulos.ISBN, titulos.Titulo, titulos.Descripcion, autor.Nombre, autor.Apellido, editorial.NameEditorial  from titulos, autor, editorial where titulos.IDautor = autor.IDautor and titulos.IDeditorial = editorial.IDeditorial and Titulo like '%"+dato+"%'";
            ArrayList<String> artis = new ArrayList<>();
            rs=st.executeQuery(consulta);
            while(rs.next()){
              String ISBN= rs.getString("ISBN");
              
              String titulo= rs.getString("Titulo");
              
              String descripcion= rs.getString("Descripcion");
              
              String nombre= rs.getString("Nombre");
              
              String apellido= rs.getString("Apellido");
              
              String autor = nombre + " " + apellido;
              
              String editorial= rs.getString("NameEditorial");
              
             //  books book = new books(titulo, ISBN, autor, editorial, descripcion);
               
            //   artis.add(book);
               
            }
            
            return artis;
        }
        
        //hace un select de un registro en concreto, saca sus valores y los mete en un arraylist, usalo para rellenar un formulario de editar  
        public ArrayList<String> consultaUnRegistro(String clave) throws SQLException{
            
            String consulta = "SELECT * from usuarios where clave = '"+clave+"'";
            
            ArrayList<String> artis = new ArrayList();
            
            rs=st.executeQuery(consulta);
            
       
                        
            while(rs.next()){
                
               String usuario= rs.getString("usuario");
               String clave2= rs.getString("clave");
               String nombre= rs.getString("nombre");
               String direccion= rs.getString("direccion");
               String tipo= rs.getString("tipo");
               String email= rs.getString("email");
               
         //      usuarios user = new usuarios(usuario,clave,tipo,nombre,direccion,email);
               
         //      artis.add(user);
               
            }
            
            return(artis);
            
        }

        
        //comprueba la existencia del usuario, manda true si el nombre de usuario y contraseña se encuentra en la base de datos
        public boolean comprobarExistencia(String nombre, String clave) throws SQLException{
            
            String consulta = "SELECT * from usuarios where User_name = '"+nombre+"' and user_Password = '"+clave+"'";
                        
            rs=st.executeQuery(consulta);
            
            int cont=0; boolean bulean=false;
                        
            while(rs.next()){
                
                cont++;
            }
            
            if(cont==1){
                
                bulean = true;
                
            }
            
            return bulean;
        }
        

        
        public ArrayList<String> hacerConsulta(String dato) throws SQLException{
                    
            String consulta = "SELECT descripcion from "+dato;
           ArrayList<String> artis = new ArrayList<>();
            rs=st.executeQuery(consulta);
            
            
            while(rs.next()){
                artis.add(rs.getString("descripcion"));
            }
            
            return artis;
            
        }
        
        
        
        public ArrayList<String> hacerConsulta(String dato, String descripcion) throws SQLException{
                    
            String consulta = "SELECT " + descripcion + " from "+dato;
           ArrayList<String> artis = new ArrayList<>();
            rs=st.executeQuery(consulta);
            
            
            while(rs.next()){
                artis.add(rs.getString(descripcion));
            }
            
            return artis;
            
        }
        
        
        
        
        
        
        //actualiza un registro
        public void actualizarRegistro(String usuario, String clave, String tipo, String nombre, String direccion, String email) throws SQLException{
            
           
                    
           String actualizar = "UPDATE usuarios SET usuario='"+usuario+"', clave='"+clave+"', tipo='"+tipo+"', nombre='"+ nombre +"', direccion='"+ direccion +"', email='"+ email +"' where clave = '"+clave+"'";
                    
                        int rs4=st.executeUpdate(actualizar);
            
            
        }
        
       //inserta un registro 
        public void insertarRegistro(String usuario, String clave, String tipo, String nombre, String direccion, String email) throws SQLException{
            
            String insertar="INSERT INTO usuarios (usuario, clave, tipo, nombre, direccion, email) VALUES ('"+usuario+"', '"+clave+"', '"+tipo+"', '"+nombre+"', '"+direccion+"', '"+email+"')";
            
            int rs=st.executeUpdate(insertar);
        }
        
        
    public ArrayList<String> borrarYrecuperarLoBorrado() throws SQLException{
    
     String consulta = "SELECT * FROM ventaordenadores where Unidades > 60";
                    
                    ResultSet rs=st.executeQuery(consulta);

                    ArrayList<String> artis = new ArrayList();

                    
                 
                    
                //   System.out.println(contador);
                   
                    while(rs.next()){
                        
                 //       Trimestre=rs.getString("Trimestre");
                   //     Unidades=rs.getString("Unidades");
                     //   vendedores=rs.getString("Vendedores");
                     
                        
                    //         usuarios user = new usuarios(trimestre, unidades, vendedores);
               
                       //      artis.add(user);

                    //    cont++;
            }
                    
                     String borrar = "DELETE FROM ventaordenadores where Unidades > 60";
                      int rs2=st.executeUpdate(borrar);
    
                      return artis;
                      
}
        
}
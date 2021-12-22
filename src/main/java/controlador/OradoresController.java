package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Oradores;
import modelo.OradoresDAO;


@WebServlet(name = "OradoresController", urlPatterns = {"/OradoresController"})
public class OradoresController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OradoresDAO oradoresDao = new OradoresDAO();
        String accion;
        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");
        if(accion == null || accion.isEmpty()){
            
            dispatcher = request.getRequestDispatcher("Vistas/oradores.jsp");
        }else if (accion.equals("modificar")){
            
            dispatcher = request.getRequestDispatcher("Vistas/modificar.jsp");
        }else if (accion.equals("actualizar")){
            int id = Integer.parseInt(request.getParameter("id"));
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String exposicion = request.getParameter("exposicion");
            Oradores orador = new Oradores(id,nombre,apellido,exposicion);
            oradoresDao.actualizarOrador(orador);
            
            dispatcher = request.getRequestDispatcher("Vistas/oradores.jsp");
        }else if (accion.equals("eliminar")){
            int id = Integer.parseInt(request.getParameter("id"));
            oradoresDao.eliminarOrador(id);
            
            dispatcher = request.getRequestDispatcher("Vistas/oradores.jsp");
        }else if(accion.equals("nuevo")){
            
            dispatcher = request.getRequestDispatcher("Vistas/nuevo.jsp");
        }else if(accion.equals("insert")){
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String exposicion = request.getParameter("exposicion");
            
            Oradores orador = new Oradores(0,nombre,apellido,exposicion);
            oradoresDao.insertarOrador(orador);
            
            dispatcher = request.getRequestDispatcher("Vistas/oradores.jsp");
        }else if(accion.equals("ingresar")){
            String usuario = request.getParameter("usuario");
            String clave = request.getParameter("password");
            boolean ingresa = oradoresDao.ingresarUsuario(usuario, clave);
            if(ingresa){
                dispatcher = request.getRequestDispatcher("Vistas/oradores.jsp");
            }else{
                dispatcher = request.getRequestDispatcher("index.html");
            }
        }else{
            dispatcher = request.getRequestDispatcher("Vistas/oradores.jsp");
        }dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

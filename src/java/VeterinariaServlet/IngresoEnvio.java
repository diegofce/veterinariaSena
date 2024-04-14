
package VeterinariaServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.*;

public class IngresoEnvio extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
           
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String user = "root";
        String pass = "Julian75087436.";
        String url = "jdbc:mysql://localhost:3307/veterinaria_dr_care";
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(IngresoEnvio.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try (java.sql.Connection conn = DriverManager.getConnection(url, user, pass)){
            
            String sql = "INSERT INTO prueba2 (email, contrasena) VALUES (?,?) ";
            
            PreparedStatement statement = conn.prepareStatement(sql);
            
            // Aquí establece los parámetros para la consulta SQL
            statement.setString(1, request.getParameter("email"));
            statement.setString(2, request.getParameter("contrasena"));
            
            // Ejecuta la consulta
            statement.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(IngresoEnvio.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        response.sendRedirect(request.getContextPath() + "/paginaConDialog.jsp");
        
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

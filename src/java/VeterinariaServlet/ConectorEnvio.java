
package VeterinariaServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.*;

public class ConectorEnvio extends HttpServlet {
    
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

        String fechaNacimientoStr = request.getParameter("fechnacimiento");
        // Convertir la cadena a un objeto LocalDate
        LocalDate fechaNacimiento = LocalDate.parse(fechaNacimientoStr);

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConectorEnvio.class.getName()).log(Level.SEVERE, null, ex);
        }

        try (java.sql.Connection conn = DriverManager.getConnection(url, user, pass)){

            String sql = "INSERT INTO cliente (id_cliente,primer_nombre_cliente, segundo_nombre_cliente, primer_apellido_cliente, segundo_apellido_cliente, fecha_nacimiento, email, direccion, contrasena ) Values (1, ?,?,?,?,?, ?, ?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);

            statement.setString(1, request.getParameter("primer_nombre"));
            statement.setString(2, request.getParameter("segundo_nombre"));
            statement.setString(3, request.getParameter("primer_apellido"));
            statement.setString(4, request.getParameter("segundo_apellido"));
            statement.setDate(5, java.sql.Date.valueOf(fechaNacimiento));
            statement.setString(6, request.getParameter("email"));
            statement.setString(7, request.getParameter("direccion"));
            statement.setString(8, request.getParameter("contrasena"));
            statement.executeUpdate();

            String sql1 = "INSERT INTO documento (nombre_documento, numero_documento ) Values (?,?)";
            PreparedStatement statement1 = conn.prepareStatement(sql1);

            statement1.setString(1, request.getParameter("tipo_documento"));
            statement1.setInt(2, Integer.parseInt("identificacion"));
            statement1.executeUpdate();

            String sql2 = "INSERT INTO ciudad (nombre_ciudad) Values (?)";
            PreparedStatement statement2 = conn.prepareStatement(sql2);

            statement2.setString(1, request.getParameter("ciudad"));
            statement2.executeUpdate();

            String sql3 = "INSERT INTO departamento (nombre_departamento) Values (?)";
            PreparedStatement statement3 = conn.prepareStatement(sql3);

            statement3.setString(1, request.getParameter("departamento"));
            statement3.executeUpdate();

            String sql4 = "INSERT INTO telefono_contacto (numero_telefono) Values (?)";
            PreparedStatement statement4 = conn.prepareStatement(sql4);

            statement4.setInt(1, Integer.parseInt("telefono"));
            statement4.executeUpdate();

            response.sendRedirect(request.getContextPath() + "/paginaConDialog.jsp");


        } catch (SQLException ex) {
            Logger.getLogger(ConectorEnvio.class.getName()).log(Level.SEVERE, null, ex);
        }

        response.sendRedirect(request.getContextPath() + "/paginaConDialog.jsp");

        processRequest(request, response);
  
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>


}

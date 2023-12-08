package Register;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author steven
 */
@WebServlet(name = "Logic_Regsiter", urlPatterns = {"/Logic_Regsiter"})
public class Logic_Regsiter extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("name");
        String correo = request.getParameter("email");
        String contrasenna = request.getParameter("password");
        Connection con = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        String mensajeBienvenida = "";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");

            String checkIfExistsSql = "SELECT COUNT(*) FROM users WHERE email=?";
            pst = con.prepareStatement(checkIfExistsSql);
            pst.setString(1, correo);
            rs = pst.executeQuery();

            if (rs.next() && rs.getInt(1) > 0) {
                mensajeBienvenida = "¡User not created, since a user with that name exists!";
                request.setAttribute("mensajeError", mensajeBienvenida);
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);

            } else {
                // El nombre no existe, realiza la inserción en la base de datos
                String insertsql = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
                pst = con.prepareStatement(insertsql);
                pst.setString(1, nombre);
                pst.setString(2, correo);
                pst.setString(3, contrasenna);
                pst.executeUpdate();
                // Muestra el mensaje de usuario creado
                mensajeBienvenida = "¡User created!";
                request.setAttribute("mensajeExito", mensajeBienvenida);
                RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
                rd.forward(request, response);

            }
        } catch (Exception e) {
            e.printStackTrace(); // Manejo de errores: imprime el seguimiento de la pila en la consola
        } finally {
            // Cierra la conexión y los recursos
            try {
                if (rs != null) {
                    rs.close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace(); // Manejo de errores: imprime el seguimiento de la pila en la consola
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Login;

import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "Logic_Login", urlPatterns = {"/Logic_Login"})
public class Logic_Login extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String loginUsuario = request.getParameter("email");
        String loginContrasenna = request.getParameter("password");
        Connection connection = null;
        PreparedStatement loginStatement = null;
        ResultSet resultSet = null;
        String mensajeBienvenida = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");

            if (loginUsuario != null && !loginUsuario.isEmpty() && loginContrasenna != null && !loginContrasenna.isEmpty()) {

                String loginQuery = "SELECT * FROM users WHERE email = ? AND password = ?";
                loginStatement = connection.prepareStatement(loginQuery);
                loginStatement.setString(1, loginUsuario);
                loginStatement.setString(2, loginContrasenna);

                resultSet = loginStatement.executeQuery();

                if (resultSet.next()) {
                    mensajeBienvenida = "¡Welcome, " + loginUsuario + "!";
                    request.getSession().setAttribute("loggedInUserEmail", loginUsuario);
                    request.setAttribute("mensajeExito", mensajeBienvenida);
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                } else {
                    mensajeBienvenida = "Incorrect username or password";
                    request.setAttribute("mensajeError", mensajeBienvenida);
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }
            } else {

                mensajeBienvenida = "Por favor, ingresa usuario y contraseña";

            }

        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Logic_Login.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            //  Cerrar Conexiones
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (loginStatement != null) {
                    loginStatement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(Logic_Login.class.getName()).log(Level.SEVERE, null, ex);
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

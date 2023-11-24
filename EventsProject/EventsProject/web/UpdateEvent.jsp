<%-- 
    Document   : UpdateEvent
    Created on : Nov 20, 2023, 2:25:18 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Event</title>
    </head>
    <body>
        <%-- Conexion a la base de dato para la modificacion de datos--%>
        <%

            Connection cone = null;
            ResultSet result = null;

            String Id = request.getParameter("eventID");
            String Name = request.getParameter("nameEvent");
            String date = request.getParameter("dateEvent");
            String time = request.getParameter("timeEvent");
            String location = request.getParameter("Location");
            String description = request.getParameter("descriptionEvent");

            try {

                //Modificacion de datos
                Class.forName("com.mysql.cj.jdbc.Driver");
                cone = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
                Statement statement = cone.createStatement();
                statement.executeUpdate("UPDATE eventss SET nameEvent='" + Name + "', dateEvent='" + date + "', timeEvent= '" + time + "', Location= '" + location +"',descriptionEvent= '" + description + "' WHERE eventID=" + Id);

                out.println("<script type='text/javascript'>alert('Se actualizó correctamente');</script>");

                response.sendRedirect("index.jsp");

            } catch (Exception ex) {
                out.println("<script type='text/javascript'>alert('Error');</script>");
            }


        %>


    </body>
</html>
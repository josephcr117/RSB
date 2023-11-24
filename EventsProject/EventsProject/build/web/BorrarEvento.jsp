<%-- 
    Document   : BorrarEvento
    Created on : 19 nov 2023, 15:34:45
    Author     : muril
--%>

<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <%
            //Llamado de variables 
            String  eventID= request.getParameter("eventID");
            Connection cone = null;
            ResultSet result = null;

            try {
                //Conexion para el delete 
                Class.forName("com.mysql.cj.jdbc.Driver");
                cone = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
                Statement statement = cone.createStatement();
                statement.executeUpdate("DELETE from eventss where eventID=" + eventID);

                out.println("<script type='text/javascript'>alert('Se borró correctamente');</script>");

                response.sendRedirect("index.jsp");

            } catch (Exception ex) {
                out.println("<script type='text/javascript'>alert('Error');</script>");
            }

        %>
    </body>
</html>
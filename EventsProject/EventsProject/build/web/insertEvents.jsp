<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events</title>
    </head>
    <body>
        <%//Logica de el insert de peliculas 
            String name = request.getParameter("nameEvent");
            String date = request.getParameter("dateEvent");
            String time = request.getParameter("timeEvent");
            String location = request.getParameter("Location");
            String description = request.getParameter("descriptionEvent");

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
            Statement statement = connection.createStatement();
            
            System.out.println("DEBUGGING - INSERT INTO eventss (nameEvent, dateEvent, timeEvent, Location, descriptionEvent) VALUES ('" + name + "', '" + date + "', '" + time + "', '" + location + "', '" + description + "');");

            String instersql = "INSERT INTO eventss (nameEvent, dateEvent, timeEvent, Location, descriptionEvent) VALUES ('" + name + "', '" + date + "', '" + time + "', '" + location + "', '" + description + "');";

            statement.executeUpdate(instersql);

            out.println("<script type='text/javascript'>alert('Evento añadido');</script>");

            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);

        %>

    </body>
</html>
<%-- 
    Document   : Modificar
    Created on : Nov 20, 2023, 2:23:30 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/RSB_EventHub.png">
    </head>
    <body>
        <jsp:include page="header.jsp" />

        <%

            int inf = Integer.parseInt(request.getParameter("inf").trim());
            Connection cone = null;
            ResultSet result = null;

            try {
                //Llamado de datos 
                Class.forName("com.mysql.cj.jdbc.Driver");
                cone = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
                Statement statement = cone.createStatement();
                result = statement.executeQuery("select* from eventss where eventID=" + inf);
                result.next();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

        %>
        <%--Form de la edicion de datos--%>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Modify your upcoming events.</h2>
                    <form action="UpdateEvent.jsp">

                        <div class="form-floating mb-3">
                            <input value='<%= result.getString(1)%>' type="hidden" class="form-control" name="eventID" placeholder="eventID">
                        </div>
                        <div class="form-floating mb-3">
                            <input value='<%= result.getString(2)%>' type="text" class="form-control" name="nameEvent" placeholder="nameEvent">
                            <label for="nameEvent">Name of the Event</label>           
                        </div>
                        <div class="form-floating mb-3">
                            <input value='<%= result.getString(3)%>' type="date" class="form-control" name="dateEvent" placeholder="dateEvent">
                            <label for="dateEvent">Date</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input value='<%= result.getString(4)%>'type="time" class="form-control" name="timeEvent" placeholder="timeEvent">
                            <label for="timeEvent">Time</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input value='<%= result.getString(5)%>' type="text" class="form-control" name="Location" placeholder="Location">
                            <label for="Location">Location</label>
                        </div>
                        <div class="form-floating mb-3">
                            <input value='<%= result.getString(6)%>' type="text" class="form-control" name="descriptionEvent" placeholder="descriptionEvent">
                            <label for="descriptionEvent">Description</label>
                        </div>
                        <%-- Actualizacion de datos--%>
                        <div class="form-floating mb-3">
                            <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs target="#confirmUpdateModal">Modify</button>
                            <button onclick="window.location.href = 'BorrarEvento.jsp?eventID= <%= result.getString(1)%>'" type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs target="#confirmDeleteModal">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
            <br>
        </div>
        <jsp:include page="footer.jsp" />


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


    </body>
</html>
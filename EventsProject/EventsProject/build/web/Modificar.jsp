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
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/stylesheet.css">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">RSB EventHub</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="container-fluid">
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="AddedEvents.jsp" class="nav-link active" aria-current="page" href="#">Go events</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="viewEvents.jsp">View your events</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Pricing</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="btn btn-primary ms-10 login-button" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-primary ms-10 register-button" href="register.jsp">Register</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <%

            int inf = Integer.parseInt(request.getParameter("inf").trim());
            Connection cone = null;
            ResultSet result = null;

            try {
                //Llamado de datos 
                Class.forName("com.mysql.cj.jdbc.Driver");
                cone = DriverManager.getConnection("jdbc:mysql://localhost/eventos", "root", "algofacil");
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
                            <button onclick="window.location.href = 'BorrarEvento.jsp?eventID= <%= result.getString(1)%>'" type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs target="#confirmDeleteModal">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
            <br>
        </div>
        <footer class="bg-dark text-light text-center py-3">
            &copy; 2023 RSB EventHub
        </footer>


        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


    </body>
</html>
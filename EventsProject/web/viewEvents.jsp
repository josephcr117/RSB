<%-- 
    Document   : viewEvents
    Created on : Nov 20, 2023, 2:26:20 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Events</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/RSB_EventHub.png">
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <%
            //Cargado de datos para la tabla de peliculas 
            Connection con = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
                Statement st = con.createStatement();
                rs = st.executeQuery("select * from eventss");

            } catch (Exception e) {
            }

        %>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Here are your Event Details.</h2>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope="col">Date</th>
                                <th scope="col">Time</th>
                                <th scope="col">Location</th>
                                <th scope="col">Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%--Carga de datos en la tabla --%>

                            <%int fila = 0;
                                while (rs.next()) {
                                    fila++;%>


                            <tr onclick="window.location.href = 'Modificar.jsp?inf= <%=rs.getInt("eventID")%>'" >
                                <th scope="row"> <%=fila%></th>
                                <td><%=rs.getString("nameEvent")%></td>
                                <td><%=rs.getString("dateEvent")%></td>
                                <td><%=rs.getString("timeEvent")%></td>
                                <td><%=rs.getString("Location")%></td>
                                <td><%=rs.getString("descriptionEvent")%></td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
            <br>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>
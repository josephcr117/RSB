<%-- 
    Document   : login
    Created on : Nov 19, 2023, 10:40:49 AM
    Author     : brianmorales
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Login - EventHub</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link href="sweetAlert2/sweetalert2.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/RSB_EventHub.png">
        <script>
            function togglePassword() {
                var passwordField = document.getElementById("password");

                if (passwordField.type === "password") {
                    passwordField.type = "text";
                } else {
                    passwordField.type = "password";
                }
            }
        </script>
    </head>
    <body>
        <%

            Connection con = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
                Statement st = con.createStatement();
                rs = st.executeQuery("select * from users");

            } catch (Exception e) {
            }
        %>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Login</h2>
                    <form method="post" action="Logic_Login">
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email"  name="email" placeholder="user@example.com" required>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="********" required>
                        </div>

                        <div class="input-group-append">
                            <button type="button" class="btn btn-outline-primary eye-button"onclick="togglePassword()">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-slash" viewBox="0 0 16 16">
                                <path d="M13.359 11.238C15.06 9.72 16 8 16 8s-3-5.5-8-5.5a7.028 7.028 0 0 0-2.79.588l.77.771A5.944 5.944 0 0 1 8 3.5c2.12 0 3.879 1.168 5.168 2.457A13.134 13.134 0 0 1 14.828 8c-.058.087-.122.183-.195.288-.335.48-.83 1.12-1.465 1.755-.165.165-.337.328-.517.486z"></path>
                                <path d="M11.297 9.176a3.5 3.5 0 0 0-4.474-4.474l.823.823a2.5 2.5 0 0 1 2.829 2.829zm-2.943 1.299.822.822a3.5 3.5 0 0 1-4.474-4.474l.823.823a2.5 2.5 0 0 0 2.829 2.829"></path>
                                <path d="M3.35 5.47c-.18.16-.353.322-.518.487A13.134 13.134 0 0 0 1.172 8l.195.288c.335.48.83 1.12 1.465 1.755C4.121 11.332 5.881 12.5 8 12.5c.716 0 1.39-.133 2.02-.36l.77.772A7.029 7.029 0 0 1 8 13.5C3 13.5 0 8 0 8s.939-1.721 2.641-3.238l.708.709zm10.296 8.884-12-12 .708-.708 12 12-.708.708"></path>
                                </svg>
                            </button>
                        </div>
                        <br>
                        <button id="btnLogin" type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
            </div>
            <br>
        </div>
        <jsp:include page="footer.jsp" />
        <script src="sweetAlert2/sweetalert2.all.min.js" type="text/javascript"></script>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <script>
            <c:if test="${not empty requestScope.mensajeError}">
                                var mensajeError = '<c:out value="${requestScope.mensajeError}"/>';
                                Swal.fire({
                                    type: "error",
                                    title: "Oops...",
                                    text: mensajeError,
                                });
            </c:if>
        </script>
        <script>
            <c:if test="${not empty requestScope.mensajeExito}">
            var mensajeExito = '<c:out value="${requestScope.mensajeExito}"/>';
            Swal.fire({
                type: "success",
                title: "¡Success!",
                text: mensajeExito,
            }).then(function () {

                window.location.href = "dashboard.jsp";
            });
            </c:if>
        </script>
    </body>
</html>

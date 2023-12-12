<%-- 
    Document   : header
    Created on : Nov 26, 2023, 3:12:18 PM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nav</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">RSB EventHub</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="container-fluid">

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">                           
                            <li class="nav-item">
                                <a class="nav-link" href="contactUs.jsp">Contact us</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">About us</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <button id="theme-toggle" class="btn btn-primary">Toggle Theme</button>
                        </li>
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
        <script>
            document.addEventListener("DOMContentLoaded", function () {
                var themeToggle = document.getElementById("theme-toggle");
                var body = document.body;

                // Obtiene el valor almacenado en localStorage
                var isDarkMode = localStorage.getItem("darkMode");

                // Verifica si se ha establecido previamente el modo oscuro
                if (isDarkMode === "enabled") {
                    body.classList.add("dark-mode");
                }

                // Agrega un evento de clic al botón
                themeToggle.addEventListener("click", function () {
                    // Cambia entre los estilos de modo oscuro y modo claro
                    body.classList.toggle("dark-mode");

                    // Guarda la configuración en localStorage
                    if (body.classList.contains("dark-mode")) {
                        localStorage.setItem("darkMode", "enabled");
                    } else {
                        localStorage.setItem("darkMode", "disabled");
                    }
                });
            });
        </script>
    </body>
</html>

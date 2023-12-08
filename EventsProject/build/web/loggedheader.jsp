<%-- 
    Document   : loggedheader
    Created on : Dec 7, 2023, 11:42:25 AM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged In Header</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="first_page.jsp">RSB EventHub</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="dropdown">
                    <a style="color: black" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Sign Out</a>
                    <div class="dropdown-menu text-center">          
                        <img src="Imagenes/images.jpg" alt=""/><br>                      
                        <a>example@gmail.com</a>
                        <div class="dropdown-divider"></div>
                        <a href="index.jsp" class="dropdown-item">Log Off</a>
                    </div>
                </div>
            </div>
        </nav>
    </body>
</html>

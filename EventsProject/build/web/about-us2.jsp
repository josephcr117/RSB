<%-- 
    Document   : about-us
    Created on : Dec 12, 2023, 11:51:54 AM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/RSB_EventHub.png">
        <style>
            .creator-container {
                display: flex;
                justify-content: space-around;
                margin-top: 20px;
            }

            .creator {
                position: relative;
                text-align: center;
                margin: 10px;
            }

            .creator img {
                width: 150px;
                height: 150px;
                border-radius: 50%;
                cursor: pointer;
            }

            .hover-details {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                z-index: 1;
            }

            .creator:hover .hover-details {
                display: block;
            }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <jsp:include page="header2.jsp" />
                <div class="creator-container">
                    <div class="creator">
                        <img class="pictures" src="Imagenes/rashid_picture.jpg" alt="Rashid Delgado"/>
                        <div class="hover-details">
                            <h3>Rashid Delgado</h3>
                            <p>Email: rdelgado@rsbeventhub.com</p>
                            <p>Creador y Fundador de RSB EventHub</p>
                        </div>
                    </div>

                    <div class="creator">
                        <img class="pictures" src="Imagenes/steven_picture.jpg" alt="Steven Fonseca"/>
                        <div class="hover-details">
                            <h3>Steven Fonseca</h3>
                            <p>Email: sfonseca@rsbeventhub.com</p>
                            <p>Creador y Fundador de RSB EventHub</p>
                        </div>
                    </div>

                    <div class="creator">
                        <img class="pictures" src="Imagenes/brian_picture.jpg" alt="Brian Morales"/>
                        <div class="hover-details">
                            <h3>Brian Morales</h3>
                            <p>Email: bmorales@rsbeventhub.com</p>
                            <p>Creador y Fundador de RSB EventHub</p>
                        </div>
                    </div>
                </div>
                <jsp:include page="footer2.jsp" />
            </div>
        </div>
    </body>
</html>

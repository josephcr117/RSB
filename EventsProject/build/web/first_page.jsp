<%-- 
    Document   : first_page
    Created on : 26 nov 2023, 22:35:03
    Author     : steven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/RSB_EventHub.png">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="first_page.jsp">RSB EventHub</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="container-fluid">
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a href="AddedEvents.jsp" class="nav-link active" aria-current="page">Add a new Event</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="viewEvents.jsp">View your events</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="contactUs.jsp">Contact us</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="dropdown">
                    <a style="color: black" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Sign off</a>
                    <div class="dropdown-menu text-center">          
                        <img src="Imagenes/images.jpg" alt=""/><br>                      
                        <a>example@gmail.com</a>
                        <div class="dropdown-divider"></div>
                        <a href="index.jsp" class="dropdown-item">Go out</a>
                    </div>
                </div>
            </div>
        </nav>
        <section>
            <div class="container mt-5">
                <div class="jumbotron">
                    <h1 class="display-4">Organize your events in a simple way</h1>
                    <p class="lead">Welcome to RSB EventHub, the platform that facilitates the planning and coordination of your events.</p>
                    <hr class="my-4">
                    <p>Sign up to start organizing your events and sending personalized invitations.</p>
                    <a class="btn btn-primary btn-lg" href="register.jsp" role="button">Register Now!</a>
                </div>
                <div class="jumbotron">
                    <h1 class="display-4">Create</h1>
                    <p class="lead">You can easily Create New Upcoming Events</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay>
                            <source src="video/create.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>
                <div class="jumbotron">
                    <h1 class="display-4">Read</h1>
                    <p class="lead">You can read events that are upcoming for you!</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay>
                            <source src="video/read.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>
                <div class="jumbotron">
                    <h1 class="display-4">Update</h1>
                    <p class="lead">Update any event that you had previously created!</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay>
                            <source src="video/update.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>
                <div class="jumbotron">
                    <h1 class="display-4">Delete</h1>
                    <p class="lead">Need to delete an event, no problem you can do that too!</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay>
                            <source src="video/delete.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp" />
    </body>
</html>

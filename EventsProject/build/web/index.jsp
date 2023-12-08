<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>RSB EventHub</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="Imagenes/RSB_EventHub.png">
    </head>
    <body class="bg-dark">
        <jsp:include page="header.jsp" />
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
                        <video width="100%" height="auto" autoplay loop muted>
                            <source src="video/create.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>

                <div class="jumbotron">
                    <h1 class="display-4">Read</h1>
                    <p class="lead">You can read events that are upcoming for you!</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay loop muted>
                            <source src="video/read.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>
                
                <div class="jumbotron">
                    <h1 class="display-4">Update</h1>
                    <p class="lead">Update any event that you had previously created!</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay loop muted>
                            <source src="video/update.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                        </video>
                    </div>
                </div>
                
                <div class="jumbotron">
                    <h1 class="display-4">Delete</h1>
                    <p class="lead">Need to delete an event, no problem you can do that too!</h1>
                    <div class="video-container">
                        <video width="100%" height="auto" autoplay loop muted>
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
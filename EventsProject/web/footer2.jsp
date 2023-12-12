<%-- 
    Document   : footer2
    Created on : 9 dic 2023, 00:36:12
    Author     : steven
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="wrapper">
            <div class="container">
                <div class="footer-container">
                    <footer class="py-5">
                        <div class="row">
                            <div class="col-6 col-md-2 mb-3">
                                <ul class="nav flex-column">
                                    <li class="nav-item mb-2"><a href="dashboard.jsp" class="nav-link p-0 text-body-secondary">Home</a></li>
                                    <li class="nav-item mb-2"><a href="AddedEvents.jsp" class="nav-link p-0 text-body-secondary">Add a New Event</a></li>
                                    <li class="nav-item mb-2"><a href="viewEvents.jsp" class="nav-link p-0 text-body-secondary">View your events</a></li>
                                    <li class="nav-item mb-2"><a href="unsubscribe.jsp" class="nav-link p-0 text-body-secondary">Unsubscribe</a></li>
                                    <li class="nav-item mb-2"><a href="contactUs2.jsp" class="nav-link p-0 text-body-secondary">Contact Us</a></li>
                                    <li class="nav-item mb-2"><a href="about-us2.jsp" class="nav-link p-0 text-body-secondary">About Us</a></li>

                                </ul>
                            </div>

                            <div class="col-6 col-md-2 mb-3 d-none">
                                <h5>Section 2</h5>
                                <ul class="nav flex-column">
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
                                </ul>
                            </div>

                            <div class="col-6 col-md-2 mb-3 d-none">
                                <h5>Section 3</h5>
                                <ul class="nav flex-column">
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Features</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
                                    <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
                                </ul>
                            </div>

                            <div class="col-md-5 offset-md-1 mb-3 ms-auto">
                                <form action="newSubscriber.jsp" method="post">
                                    <h5>Subscribe to our newsletter</h5>
                                    <p>Monthly digest of what's new and exciting from us.</p>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" required>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>

                        </div>

                        <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
                            <ul class="list-unstyled d-flex">
                                <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg></a></li>
                                <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#instagram"></use></svg></a></li>
                                <li class="ms-3"><a class="link-body-emphasis" href="#"><svg class="bi" width="24" height="24"><use xlink:href="#facebook"></use></svg></a></li>
                            </ul>
                            <p>© 2023 RSB EventHub. All rights reserved.</p>
                        </div>
                    </footer>
                </div>
            </div>
        </div>
    </body>
</html>
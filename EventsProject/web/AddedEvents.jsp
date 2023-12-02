<%-- 
    Document   : AddedEvents
    Created on : 18 nov 2023, 09:27:45
    Author     : muril
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <link href="css/styles.css" rel="stylesheet" type="text/css"/>

        <title>Add Events</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Please provide us with details of the event.</h2>
                    <form action="insertEvents.jsp" method="post">
                        <div class="form-group">
                            <label for="name">Name of the Event</label>
                            <input type="text" class="form-control" id="nameEvent" name="nameEvent" value="" required>
                        </div>
                        <div class="form-group">
                            <label for="date">Date</label>
                            <input type="date" class="form-control" id="dateEvent" name="dateEvent" placeholder="mm/dd/yyyy" value="" required>
                        </div>
                        <div class="form-group">
                            <label for="time">Time</label>
                            <input type="time" class="form-control" id="timeEvent" name="timeEvent" value="" required>
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" class="form-control" id="Location" name="Location" placeholder="123 Main St, City, Province" value="" required>
                        </div>
                        <div class="form-group">
                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="descriptionEvent" name="descriptionEvent" value="" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>

                </div>
            </div>
            <br>
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>

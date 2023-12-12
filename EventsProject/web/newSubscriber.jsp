<%-- 
    Document   : newSubscriber
    Created on : 9 dic 2023, 02:12:42
    Author     : steven
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1" 
                           user="a1e868_grupo1" 
                           password="grupo12023" />

        <sql:update var="var">
            INSERT INTO newsletter_subscribers (email)
            VALUES (?)
            <sql:param value="${param.email}"></sql:param>          
        </sql:update>    
        <c:redirect url="index.jsp">     

        </c:redirect>
        <%

            Connection cone = null;
            ResultSet result = null;

            String Id = request.getParameter("eventID");
            String Name = request.getParameter("nameEvent");
            String date = request.getParameter("dateEvent");
            String time = request.getParameter("timeEvent");
            String location = request.getParameter("Location");
            String description = request.getParameter("descriptionEvent");

            try {

                //Modificacion de datos
                Class.forName("com.mysql.cj.jdbc.Driver");
                cone = DriverManager.getConnection("jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1", "a1e868_grupo1", "grupo12023");
                Statement statement = cone.createStatement();
                statement.executeUpdate("UPDATE eventss SET nameEvent='" + Name + "', dateEvent='" + date + "', timeEvent= '" + time + "', Location= '" + location + "',descriptionEvent= '" + description + "' WHERE eventID=" + Id);

                out.println("<script type='text/javascript'>alert('Se actualizó correctamente');</script>");

                response.sendRedirect("first_page.jsp");

            } catch (Exception ex) {
                out.println("<script type='text/javascript'>alert('Error');</script>");
            }


        %>
    </body>
</html>

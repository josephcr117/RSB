<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import= "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Events</title>
    </head>
    <body>
        
        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1" 
                           user="a1e868_grupo1" 
                           password="grupo12023" />

        <sql:update var="var">
            INSERT INTO eventss (nameEvent, dateEvent, timeEvent, Location, descriptionEvent)
            VALUES (?, ?, ?, ?, ?)
            <sql:param value="${param.nameEvent}"></sql:param>
            <sql:param value="${param.dateEvent}"></sql:param>
            <sql:param value="${param.timeEvent}"></sql:param>
            <sql:param value="${param.Location}"></sql:param>
            <sql:param value="${param.descriptionEvent}"></sql:param>
        </sql:update>

        <sql:query var="result">
            SELECT * FROM eventss ORDER BY eventID DESC
        </sql:query>

        <c:redirect url="index.jsp">
            <c:param name="event" value="${result.rows[0].eventID}"></c:param>
        </c:redirect>

    </body>
</html>
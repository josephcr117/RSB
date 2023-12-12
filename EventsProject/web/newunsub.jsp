<%-- 
    Document   : newunsub
    Created on : 9 dic 2023, 02:13:06
    Author     : steven
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            UPDATE newsletter_subscribers SET unsubscribed = TRUE WHERE email = ?          
            <sql:param value="${param.email}" />
        </sql:update>   
        <c:redirect url="index.jsp">     

        </c:redirect>
    </body>
</html>

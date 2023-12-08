<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.sql.*, java.io.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 
    Document   : changePassword
    Created on : Dec 8, 2023, 10:44:03 AM
    Author     : brianmorales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.jsp.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Change Password</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" 
                           url="jdbc:mysql://mysql6008.site4now.net/db_a1e868_grupo1" 
                           user="a1e868_grupo1" 
                           password="grupo12023" />

        <c:set var="currentUserEmail" value="${sessionScope.loggedInUserEmail}"></c:set>
        <c:set var="currentPassword" value="${param.currentPassword}"></c:set>
        <c:set var="newPassword" value="${param.newPassword}"></c:set>
        <c:set var="confirmPassword" value="${param.confirmPassword}"></c:set>

        <c:choose>
            <c:when test="${not empty param.currentPassword}">
                <sql:query var="passwordResult">
                    SELECT userID, password FROM users WHERE email = ?
                    <sql:param value="${currentUserEmail}"></sql:param>
                </sql:query>

                <c:if test="${not empty passwordResult.rows}">
                    <c:set var="userId" value="${passwordResult.rows[0].userId}"></c:set>
                    <c:set var="storedPassword" value="${passwordResult.rows[0].password}"></c:set>
                    <c:set var="currentPasswordCorrect" value="${currentPassword eq storedPassword}"></c:set>
                    <c:out value="DEBUG: Current Password Correct: ${currentPasswordCorrect}"></c:out>

                    <c:if test="${currentPasswordCorrect}">
                        <sql:update var="updateResult">
                            UPDATE users SET password = ? WHERE email = ?
                            <sql:param value="${newPassword}"></sql:param>
                            <sql:param value="${currentUserEmail}"></sql:param>
                        </sql:update>

                        <c:out value="DEBUG: Password updated successfully!" />
                        <c:set var="serverMessage" value="Password updated successfully!" />
                    </c:if>

                    <c:if test="${not currentPasswordCorrect}">
                        <c:out value="DEBUG: Passwords do not match or current password is incorrect." />
                        <c:set var="serverMessage" value="Error: Passwords do not match or current password is incorrect." />
                    </c:if>
                </c:if>
            </c:when>
        </c:choose>

        <c:redirect url="settings.jsp">
            <c:param name="updatedid" value="${userId}"></c:param>
        </c:redirect>
    </body>
</html>
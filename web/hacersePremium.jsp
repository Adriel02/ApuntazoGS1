<%-- 
    Created on : 23-nov-2018
    Author     : julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subir apuntes</title>
        <%@ include file="/headerRegistrado.html" %>
    </head>
    <body>

        <h1 align="center">Hacerse premium por 9,99€</h1>
        <h2 align="center">Obten acceso a todos los apuntes de tu grado</h2>
        <div align="center">
            <button class="btn btn-default navbar-btn" onClick="window.open('/PrincipalPremium.jsp')">
                <span class="icon">Hacerse premium</span>
            </button>
        </div>
        <%@ include file="/footerRegistrado.html" %>
    </body>
</html>

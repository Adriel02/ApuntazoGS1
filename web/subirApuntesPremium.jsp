<%-- 
    Created on : 19-nov-2018
    Author     : julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subir apuntes</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body>
        <h1 align="center">Subir apuntes</h1>
        <div align="center">
            <form enctype="multipart/form-data" action="apuntesSubidosPremium.jsp" method="POST">
            <input name="uploadedfile" class="btn btn-default navbar-btn" type="file" />
            <br>
            <input type="submit" class="btn btn-default navbar-btn" value="Subir" />
        </div>
        <%@ include file="/footerPremium.html" %>
    </body>
</html>

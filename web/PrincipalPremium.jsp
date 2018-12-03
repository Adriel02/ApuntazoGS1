<%-- 
    Created on : 15-nov-2018, 21:19:40
    Author     : julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Controller.Model.Usuario"%>    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
        <%@ include file="/headerPremium.html" %>
        <link rel="stylesheet" href="Recursos/bootstrap/css/bootstrap.css">
    </head>
    <body>
        <div align="center"><img src="/Recursos/logopremium.png"></div>
        <br>
        <h2 align="center">Mis apuntes personales:</h2>
        <br>
        <div class="container">
            <table align="center" class="table table-bordered">
                <tr>
                    <th align="center">
                        Nombre
                    </th>
                    <th align="center">
                        Asignatura
                    </th>
                </tr>
                <tr>
                    <td align="center">
                        <button class="btn btn-default navbar-btn" onClick="window.open('/Recursos/Puntos caso de uso.pdf')">
                            <span class="icon">Puntos caso de uso</span>
                        </button>
                    </td>
                    <td align="center">
                        GS1
                    </td>
                </tr>
            </table>
        </div>
        <%@ include file="/footerPremium.html" %>
    </body>
</html>


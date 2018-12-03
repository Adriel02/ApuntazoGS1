<%-- 
    Created on : 18-nov-2018
    Author     : julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignaturas</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body>
        <h1 align="center">Apuntes disponibles en GS1</h1>
        <div class="container">
            <table align="center" class="table table-bordered">
                <tr>
                    <td align="center">
                        <button class="btn btn-default navbar-btn" onClick="window.open('/0presentacion.jsp')">
                            <span class="icon">0 Presentación</span>
                        </button>
                         56 <span class="glyphicon glyphicon-thumbs-up"></span> 4 <span class="glyphicon glyphicon-thumbs-down"></span>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <button class="btn btn-default navbar-btn" onClick="window.open('/Recursos/Apuntes/1 INTRODUCCIÓN A LA GESTIÓN DEL SW.pdf')">
                            <span class="icon">1 INTRODUCCIÓN A LA GESTIÓN DEL SW</span>
                        </button>
                         26 <span class="glyphicon glyphicon-thumbs-up"></span> 7 <span class="glyphicon glyphicon-thumbs-down"></span>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <button class="btn btn-default navbar-btn" onClick="window.open('/Recursos/Apuntes/2 PLAN DE NEGOCIO.pdf');">
                            <span class="icon">2 PLAN DE NEGOCIO</span>
                        </button>
                         39 <span class="glyphicon glyphicon-thumbs-up"></span> 8 <span class="glyphicon glyphicon-thumbs-down"></span>
                    </td>
                </tr>

            </table> 
        </div>
        <div align="center">
            <ul class="pagination" >
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
        <%@ include file="/footerPremium.html" %>
    </body>
</html>

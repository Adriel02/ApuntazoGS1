<%-- 
    Created on : 18-nov-2018
    Author     : julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Recursos/loader.css"> 
        <title>Subida completada</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body onload="myFunction()" style="margin:0;">
        
        <div>
            <h1 align="center">Tu PDF se ha subido correctamente</h1>
            <p align="center">A continuación puedes visualizar el resultado, cuando esté revisado por los administradores se hará visible</p>
        </div>
        <div id="loader"></div>

        <div style="display:none;" id="myDiv" class="animate-bottom">
            <embed src="Recursos/Puntos caso de uso.pdf" width="1000" height="800" alt="pdf">
        </div>
        <%@ include file="/footerPremium.html" %>
        
        
        <script>
            var myVar;

            function myFunction() {
                myVar = setTimeout(showPage, 3000);
            }

            function showPage() {
                document.getElementById("loader").style.display = "none";
                document.getElementById("myDiv").style.display = "block";
            }
        </script>
    </body>
</html>

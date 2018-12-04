<%-- 
    Document   : verApunte1Premium
    Created on : 27-nov-2018, 21:25:39
    Author     : julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Recursos/loader.css"> 
        <title>0 Presentación - GS1</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body onload="myFunction()" style="margin:0;">

        <div>
            <h1 align="center">0 Presentación</h1><br> 
        </div>
        <div id="loader"></div>

        <div style="display:none;" id="myDiv" class="animate-bottom">
            <embed src="Recursos/Apuntes/0 PRESENTACION.pdf" width="1000" height="800" alt="pdf">
            <div>
                <h3>Valorar:</h3> 56 <span class="glyphicon glyphicon-thumbs-up"></span> 4 <span class="glyphicon glyphicon-thumbs-down"></span></p><br>
            </div>
           
            <div class="container" align="center">
                <h3>Comentarios:</h3><br> 
                <p>Muy util, me ha servido mucho!!   15 <span class="glyphicon glyphicon-thumbs-up"></span>  1 <span class="glyphicon glyphicon-thumbs-down"></span></p><br>
                <p>Increible    12 <span class="glyphicon glyphicon-thumbs-up"></span>   2 <span class="glyphicon glyphicon-thumbs-down"></span></p><br>
                <p>Asignatura horrible, muy mala presentación    0 <span class="glyphicon glyphicon-thumbs-up"></span>   74 <span class="glyphicon glyphicon-thumbs-down"></span></p><br>
                <div class="form-group" >
                    <input type="text" class="form-control" id="usr">
                    <button type="submit" name="Comentar" class="btn btn-default navbar-btn">Comentar</button>
                </div>
            </div>
        </div>
        


        <script>
            var myVar;

            function myFunction() {
                myVar = setTimeout(showPage, 1000);
            }

            function showPage() {
                document.getElementById("loader").style.display = "none";
                document.getElementById("myDiv").style.display = "block";
            }
        </script>
    </body>
</html>


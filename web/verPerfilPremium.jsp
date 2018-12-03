<%-- 
    Created on : 18-nov-2018
    Author     : julio
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body>
        <div class="container">
            <div class="alert alert-danger">
                <strong>¡Atención!</strong> Tu renovación automática se hará el día 03/12/2018.
            </div>
        </div>
        <h1 align="center">Mi perfil</h1>
        <div class="container">
            <table align="center" class="table table-bordered">
                <tr>
                    <th align="center">
                        Nombre
                    </th>
                    <th align="center">
                        user1
                    </th>
                </tr>
                <tr>
                    <th align="center">
                        Cuenta de Paypal vinculada: 
                    </th>
                    <th align="center">
                        muyayo93
                    </th>
                </tr>
                <tr align="center">
                    <th align="center">
                        Saldo disponible actualmente: 
                    </th>
                    <th align="center">
                        18.93€ 
                        <br>
                        (Se requiere un mínimo de 20€ para solitar el ingreso.)
                    </th>
                    <th>
                        <button class="btn btn-default navbar-btn" onclick="myFunction()">Solicitar ingreso
                        </button>
                    </th>
                </tr>
                <tr>
                    <th align="center">
                        Universidad: 
                    </th>
                    <th align="center">
                        ULPGC
                    </th>
                </tr>
                <tr>
                    <th align="center">
                        Grado: 
                    </th>
                    <th align="center">
                        Ingeniería Informática
                    </th>
                </tr>
            </table>
        </div>
        <%@ include file="/footerPremium.html" %>
        <script>
            function myFunction() {
                alert("No has alcanzado el mínimo de 20€");
            }
        </script>
    </body>
</html>

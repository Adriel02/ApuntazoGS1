<%-- 
    Created on : 20-nov-2018
    Author     : julio
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grados</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body>
        
        <h1 align="center">Grados</h1>
        <br>
        <div class="container">
            <table align="center" class="table table-bordered">
                <tr>
                    <th align="center">
                        Grado
                    </th>
                    <th align="center">
                        Universidad
                    </th>
                    <th align="center">
                        Opciones
                    </th>
                </tr>
                <%
                    ResultSet rs = (ResultSet) request.getAttribute("grado");
                    if (rs != null) {
                        while (rs.next()) {%>
                <tr>
                    <td align="center"><%=rs.getString("NOMBRE")%></td>
                    <td align="center"><%=rs.getString("UNIVERSIDAD")%></td>
                    <td align="center">
                        <form action="/FrontServlet" method="post" align="center">
                            <input type="hidden" name="asignaturaFiltrado" value="<%=rs.getString("UNIVERSIDAD")%>">
                            <input type="hidden" name="gradeFiltrado" value="<%=rs.getString("NOMBRE")%>">
                            <input type="hidden" name="command" value="Acciones.mostrarAsignaturasFiltrado">
                            <button type="submit" name="Mostrar Asignaturas" class="btn btn-default navbar-btn">Ver Asignaturas</button>
                        </form>
                            
                    </td>

                </tr>
                <%}
                %>
            </table>   
            <%}
            %>
        </div>
        <%@ include file="/footerPremium.html" %>
    </body>
</html>
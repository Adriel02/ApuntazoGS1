<%-- 
    Created on : 19-nov-2018
    Author     : julio
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Universidades</title>
        <%@ include file="/headerRegistrado.html" %>
    </head>
    <body>
        <h1 align="center">Universidades</h1>
        <br>
        <div class="container">
            <table align="center" class="table table-bordered">
                <tr>
                    <th align="center">
                        Nombre
                    </th>
                    <th align="center">
                        Provincia
                    </th>
                </tr>
                <%
                    ResultSet rs = (ResultSet) request.getAttribute("universidades");
                    if (rs != null) {
                        while (rs.next()) {%>
                <tr>
                    <td align="center"><%=rs.getString("NOMBRE")%></td>
                    <td align="center"><%=rs.getString("COMUNIDADAUTONOMA")%></td>
                    <td align="center">
                        <form action="/FrontServlet" method="post">
                            <input type="hidden" name="command" value="Acciones.mostrarGradosRegistrado">
                            <button type="submit" name="Mostrar grados" class="btn btn-default navbar-btn">Ver grados</button>
                        </form>
                    </td>
                </tr>
                <%}
                %>
            </table>   
            <%}
            %>
        </div>
        <%@ include file="/footerRegistrado.html" %>
    </body>
</html>
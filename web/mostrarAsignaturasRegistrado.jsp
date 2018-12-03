<%-- 
    Created on : 23-nov-2018
    Author     : julio
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Asignaturas</title>
        <%@ include file="/headerRegistrado.html" %>
    </head>
    <body>
        <h1 align="center">Asignaturas con apuntes disponibles</h1>
        <br>
        <div class="container">
            <table align="center" class="table table-bordered">
                <tr>
                    <th align="center">
                        Nombre
                    </th>
                    <th align="center">
                        Curso
                    </th>
                    <th align="center">
                        Universidad
                    </th>
                </tr>
                <%
                    ResultSet rs = (ResultSet) request.getAttribute("asignaturas");
                    if (rs != null) {
                        while (rs.next()) {%>
                <tr>
                    <td align="center"><%=rs.getString("NOMBRE")%></td>
                    <td align="center"><%=rs.getInt("CURSO")%></td>
                    <td align="center"><%=rs.getString("UNIVERSIDAD")%></td>

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
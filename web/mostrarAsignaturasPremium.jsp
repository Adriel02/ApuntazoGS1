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
        <title>Asignaturas</title>
        <%@ include file="/headerPremium.html" %>
    </head>
    <body>
        
        <h1 align="center">Asignaturas</h1>
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
                    <th align="center">
                        Grado
                    </th>
                     <th align="center">
                        Opciones
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
                    <td align="center"><%=rs.getString("GRADO")%></td>

                    <td align="center">
                        <form action="/verApuntesPremium.jsp" align="center" method="post">
                            <button type="submit" name="Ver apuntes" class="btn btn-default navbar-btn">Ver apuntes</button>
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
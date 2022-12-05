
<%@page import="java.util.ArrayList"%>
<%@page import="udb.cdba.beans.UsuarioBean"%>
<%@page import="udb.cdba.model.UsuarioSQL"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de personas</title>
    </head>
    <body>
        <div>
        <h1>Personas</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>DNI</th>
                    <th>NOMBRES</th>
                    <th>ACTIONS</th>
                </tr>
            </thead>
            <%
                UsuarioSQL usrsql = new UsuarioSQL();
                ArrayList<UsuarioBean> usrs = usrsql.obtenerUsuarios();
               
                for (int i = 0; i < usrs.size(); i++) {
            %>
            <tbody>
                <tr>
                    <td><%= usrs.get(i)%></td>
                    <td></td>
                    <td></td>
                    <td>
                        <a>Editar</a>
                        <a>Eliminar</a>
                    </td>
                </tr>
                <%}%>
            </tbody>
        </table>
        </div>
    </body>
</html>

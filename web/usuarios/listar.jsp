
<%@page import="java.util.Iterator"%>
<%@page import="udb.cdba.beans.UsuarioBean"%>
<%@page import="udb.cdba.model.UsuarioSQL"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuarios</title>
    </head>
    <body>
        <jsp:include page="/menu.jsp"/>
        <div>
        <h1>Usuarios</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Rol</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <%
                UsuarioSQL usrsql = new UsuarioSQL();
                List<UsuarioBean> usrs = usrsql.obtenerUsuarios();
               Iterator<UsuarioBean> iter = usrs.iterator();
               UsuarioBean usr=null;
               
                for (int i = 0; i < usrs.size(); i++) {
            %>
            <tbody>
                <tr>
                    <td><%= usrs.get(i)%></td>
                    <td></td>
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

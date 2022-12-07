<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <div class="container">
            <h1>Usuarios: </h1>
                <table class="table table-dark text-center">
                    <thead>
                        <tr>
                            <th scope="col">Carnet</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Apellido</th>
                            <th scope="col">Nombre-Rol</th>
                            <th scope="col">Opcion</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <td>${usuario.carnet}</td>
                                <td>${usuario.nombre}</td>
                                <td>${usuario.apellido}</td>
                                <td>${usuario.nombre_rol}</td>
                                <td>
                                    <a class="btn btn-info" href="#" role="button" >Editar</a>
                                    <a class="btn btn-danger" href="#" role="button" >Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
        </div>
    </body>
</html>

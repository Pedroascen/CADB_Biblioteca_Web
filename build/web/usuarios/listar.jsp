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
        <jsp:include page="/components/menu.jsp"/>
        <input type="hidden" id="Lrol_id" name="Lrol_id" value="<c:out value="${usuarioLogin.id_rol}"/>">
        <input type="hidden" id="Lcarnet" name="Lcarnet" value="<c:out value="${usuarioLogin.carnet}"/>">
        <div class="container">
            <h4>Listado de Usuarios: </h4>
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
                                <a class="btn btn-info" href="/CADB_Biblioteca_Web/usuario?accion=obtener&carnet=${usuario.carnet}&ir=${usuarioLogin.id_rol}" role="button" >Editar</a>
                                <a class="btn btn-danger" href="/CADB_Biblioteca_Web/usuario?accion=eliminar&carnet=${usuario.carnet}&ir=${usuarioLogin.id_rol}" role="button" >Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>

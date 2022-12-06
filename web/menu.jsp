<%-- 
    Document   : menu
    Created on : 12-04-2022, 09:47:49 PM
    Author     : Ascencio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="/head.jsp"/>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Biblioteca Web</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="UsuarioCtrl?accion=listar">Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cerrarsesion.jsp"> (cerrar sesión)</a></li>
                    </li>
                </ul>
            </div>
        </nav>
    </body>
</html>

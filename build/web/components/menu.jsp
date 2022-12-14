<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/components/head.jsp"/>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Biblioteca Web / <span id="Tcarnet">${usuarioLogin.getCarnet()}</span> / </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/index?&ir=${usuarioLogin.id_rol}">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button"
                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Agregar ejemplares
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="libro?accion=nuevo&ir=${usuarioLogin.id_rol}">Nuevo Libro</a>
                    <a class="dropdown-item" href="revista?accion=nuevo&ir=${usuarioLogin.id_rol}">Nueva Revista</a>
                    <a class="dropdown-item" href="tesis?accion=nuevo&ir=${usuarioLogin.id_rol}">Nueva Tesis</a>
                    <a class="dropdown-item" href="obra?accion=nuevo&ir=${usuarioLogin.id_rol}">Nueva Obra</a>
                    <a class="dropdown-item" href="cd?accion=nuevo&ir=${usuarioLogin.id_rol}">Nuevo CD</a>

            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/ejemplares/consultar.jsp">Buscar Ejemplares</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/prestamo?accion=1">Pr??stamo</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/devolucion?accion=1">Devoluci??n</a>
            </li>
            <li class="nav-item dropdown active">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Usuarios
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="usuario?accion=nuevo&ir=${usuarioLogin.id_rol}">Nuevo Usuario</a>
                    <a class="dropdown-item" href="usuario?accion=listar&ir=${usuarioLogin.id_rol}">Ver lista de usuarios</a>
                </div>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/login?accion=salir">Cerrar Sesi??n</a>
            </li>
        </ul>
                
    </div>
</nav>
<script src="./assets/js/data.js"></script>

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
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/prestamo_usuario?accion=listar&ir=${usuarioLogin.id_rol}">Préstamos <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/prestamo_usuario?accion=consulta&carnet=${usuarioLogin.getCarnet()}">Devoluciones <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/CADB_Biblioteca_Web/login?accion=salir">Cerrar Sesión</a>
            </li>
        </ul>
    </div>
</nav>
<script src="./assets/js/data.js"></script>

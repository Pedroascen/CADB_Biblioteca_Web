<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Ejemplares</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--link  href="./assets/css/bootstrap.min.css" rel="stylesheet"-->
        <script src="./assets/js/jquery.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Biblioteca Web / <span id="Tcarnet">Todos los materiales</span> </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item active">
                        <a class="nav-link" href="/CADB_Biblioteca_Web/index?&ir=${usuarioLogin.id_rol}">Consultar<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/CADB_Biblioteca_Web/login">Iniciar Sesion</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <c:forEach var="ejemplares" items="${ejemplares}">
                <div class="card mt-2 mb-2">
                    <div class="card-body">
                        <h5 class="card-title">${ejemplares.tipoMaterial}: ${ejemplares.titulo}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">${ejemplares.autores}</h6>
                        <p class="card-text">
                            ${ejemplares.materialInfo}
                        </p>
                        <a href="#" class="card-link">Ver Info</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>

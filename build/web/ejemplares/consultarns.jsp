<jsp:include page="/components/head.jsp"/>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buscar Ejemplares</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">Biblioteca Web / <span id="Tcarnet"</span> </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">

                    <li class="nav-item active">
                        <a class="nav-link" href="/CADB_Biblioteca_Web/index?&ir=${usuarioLogin.id_rol}">Consultar<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/CADB_Biblioteca_Web/login">Iniciar Sesión</a>
                    </li>
                </ul>
            </div>
        </nav>
                    
        <div class="container">
            <div class="xrow mt-4">
                <form role="form" action="/CADB_Biblioteca_Web/consultarns?accion=buscarns" method="POST">

                    <div class="form-group ">
                        <label for="nombre">Título:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="titulo" id="titulo" 
                                   placeholder="">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="nombre">Autores</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="autor" id="autor" 
                                   placeholder="">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Material:</label>
                        <select class="form-control" id="material" name="material">
                            <option value="Todos">Todos</option>
                            <option value="Libro">Libro</option>
                            <option value="Revista">Revista</option>
                            <option value="Obra">Obra</option>
                            <option value="Tesis">Tesis</option>
                            <option value="CD">CD</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Idioma:</label>
                        <select class="form-control" id="idioma" name="idioma">
                            <option value="Todos">Todos</option>
                            <option value="Ingles">Inglés</option>
                            <option value="Espanol">Español</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Order:</label>
                        <select class="form-control" id="orderBy" name="orderBy">
                            <option value="Titulo">Título</option>
                            <option value="Autor">Autor</option>
                            <option value="Clasificacion">Clasificación</option>
                        </select>
                    </div>
                    <div class="col pl-0">
                        <input type="submit" class="btn btn-info ml-0 mt-1" value="Consultar">
                    </div>

                </form>
            </div>
        </div>
    </body>
</html>

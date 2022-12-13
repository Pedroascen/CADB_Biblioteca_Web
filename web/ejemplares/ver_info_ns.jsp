<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="udb.cdba.beans.EjemplarBean"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Ejemplar</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--link  href="./assets/css/bootstrap.min.css" rel="stylesheet"-->
        <script src="./assets/js/jquery.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
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

        <div class="container " action="/CADB_Biblioteca_Web/usuario?accion=modificar&ir=${usuarioLogin.id_rol}" method="POST">
            <a href="javascript:history.back()">Regresar</a>
            
                <div class="card mt-2 mb-2">
                    <div class="card-body">
                        <p class="card-text">
                            <table>
                                    <tr height= 40px>
                                        <td class="text-right" style="width: 200px;"><b>Autor: </b></style></td><td class="pl-3">${ejemplares.autores}</d></td>
                                    </tr>
                                    <tr height= 40px>
                                        <td class="text-right" style="width: 200px;"><b>Título: </b></td><td class="pl-3">${ejemplares.titulo}</d></td>
                                    </tr>
                                    <tr height= 40px>
                                        <td class="text-right" style="width: 200px;"><b>Clasificación: </b></td><td class="pl-3">${ejemplares.tipoMaterial}</d></td>
                                    </tr>
                                    <tr height= 40px>
                                        <td class="text-right" style="width: 200px;"><b>Código: </b></td><td class="pl-3">${ejemplares.codigoMaterial}</d></td>
                                    </tr>
                                    <tr height= 40px>
                                        <td class="text-right" style="width: 200px;"><b>Disponibles: </b></td><td class="pl-3">Contact</d></td>
                                    </tr>
                                    <tr height= 40px>
                                        <td class="text-right" style="width: 200px;"><b>Ubicación: </b></td><td class="pl-3">Contact</d></td>
                                    </tr>
                            </table> 
                        </p>                        
                    </div>
                </div>
            
                <a href="/CADB_Biblioteca_Web/ejemplares/consultar.jsp" class="card-link">Nueva búsqueda</a>
            <p>
                <br>
            </p>
        </div>
    </body>
</html>

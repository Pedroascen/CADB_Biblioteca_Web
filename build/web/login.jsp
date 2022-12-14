<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div class="row mt-4">
                <div class="col">
                    <form role="form" action="/CADB_Biblioteca_Web/login?accion=logueo" method="POST">
                        <div class="block text-center">
                            <img class="mt-4" src="img/logo.png" height="270px" width="270px">
                        </div>
                        <a type="button" class="btn btn-success btn-block col-7 mx-auto mt-2 mb-5" href="/CADB_Biblioteca_Web/ejemplares/consultarns.jsp">Buscar ejemplares</a>
                        <div class="form-group mt-5"></div>
                </div>
                <div class="col">
                    <div class="form-group mt-5">
                        <div class="card p-4">
                            <h4 class="text-center mb-3">Usuarios registrados</h4>
                            <label for="carnet">Ingrese su carnet:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="carnet" id="carnet" 
                                       placeholder="Carnet" required>
                                <span class="input-group-addon"></span>
                            </div>

                            <div class="form-group mt-2">
                                <label for="contrasenia">Ingrese su contraseņa:</label>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="contrasenia" name="contrasenia" 
                                           placeholder="Contraseņa" required>
                                    <span class="input-group-addon"></span>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-info btn-block">Iniciar sesión</button>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
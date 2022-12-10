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
            <form role="form" action="/CADB_Biblioteca_Web/login?accion=logueo" method="POST" class="col-md-6 m-5">
                <div class="block text-center">
                    <h3>Iniciar Sesion</h3>
                </div>
                <div class="col-md-auto">
                    <div class="form-group">
                        <label for="carnet">Ingrese su carnet:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="carnet" id="carnet" 
                                   placeholder="Carnet" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese contraseña:</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="contrasenia" name="contrasenia" 
                                   placeholder="Contraseña" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block m-1">Iniciar Sesion</button>
                    <a type="button" class="btn btn-secondary btn-block m-1" href="/CADB_Biblioteca_Web/consultar">Ver Materiales</a>

                </div>
            </form>
        </div>

    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>Login</title>
    </head>
     <jsp:useBean id="usuario" scope="request" class="udb.cdba.beans.UsuarioBean" />
     <jsp:setProperty name="usuario" property="carnet" />
     <jsp:setProperty name="usuario" property="contrasenia" />
     <c:if test="${not empty param.carnet && not empty param.contrasenia}">
        <jsp:forward page="UsuarioCtrl?accion=logueo"/>                
    </c:if> 
    <body>
        <div class="container">
            <div class="row">
                <h3>Iniciar Sesion</h3>
            </div>
            <div class="row">
                <form method="POST">
                    <div class="col-md-10">
                        <div class="form-group">
                            <label for="carnet">Ingrese su carnet:</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="carnet" id="carnet" 
                                       placeholder="Carnet">
                                <span class="input-group-addon"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="contrasenia">Ingrese contraseña:</label>
                            <div class="input-group">
                                <input type="password" class="form-control" id="contrasenia" name="contrasenia" 
                                       placeholder="Contraseña">
                                <span class="input-group-addon"></span>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-info" value="Iniciar Sesion">
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>

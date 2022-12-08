<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="udb.cdba.beans.UsuarioBean"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usuario</title>
    </head>
    <body>
        <jsp:include page="/menu.jsp"/>
        <div class="container">
            <form role="form" action="/CADB_Biblioteca_Web/usuario?accion=insertar" method="POST">
                <h4>Agregar nuevo Usuario:</h4>
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="id_rol">Rol</label>
                        <select class="form-control" id="id_rol" name="id_rol">
                            <option value="1">Administrador</option>
                            <option value="2">Profesor</option>
                            <option value="3">Alumno</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Ingrese su nombre:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="nombre" id="nombre" 
                                   placeholder="Nombre">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Ingrese Apellido:</label>
                        <div class="input-group">
                            <input type="apellido" class="form-control" id="apellido" name="apellido" 
                                   placeholder="Apellido">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Contraseña:</label>
                        <div class="input-group">
                            <input type="contrasenia" class="form-control" id="contrasenia" name="contrasenia" 
                                   placeholder="Contrasenia">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrar</button>
                    <a class="btn btn-danger" href="/CADB_Biblioteca_Web/usuario?accion=listar">Cancelar</a>
                </div>
            </form>
        </div>
    </body>
</html>

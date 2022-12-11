<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guardar Libro</title>
    </head>
    <body>
        <jsp:include page="/components/menu.jsp"/>
        <div class="container">
            <form role="form" action="/CADB_Biblioteca_Web/libro?accion=insertar" method="POST">
                <input type="hidden" name="codMaterial">
                <h4>Agregar nuevo Libro:</h4>
                <div class="col-md-10">
                     <div class="form-group">
                        <label for="nombre">Ingrese su Titulo:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="titulo" id="nombre" 
                                   placeholder="Titulo" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Ingrese su Ubicacion:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="ufisica" id="nombre" 
                                   placeholder="Nombre" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Ingrese Cantidad Ejemplares:</label>
                        <div class="input-group">
                            <input type="apellido" class="form-control" id="cejemp" name="cejemp" 
                                   placeholder="Apellido" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Autor:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="autor" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese NPaginas:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="npaginas" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Editorial:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="editorial" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Pais:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="pais" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese ISBN:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="isbn" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Año:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="anio" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Edicion:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="edicion" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Idioma:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="idioma" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Materia:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="materia" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Descripcion:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="contrasenia" name="descripcion" 
                                   placeholder="Contrasenia" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrar</button>
                    <a class="btn btn-danger" href="/CADB_Biblioteca_Web/usuario?accion=listar&ir=${usuarioLogin.id_rol}">Cancelar</a>
                </div>
            </form>
        </div>
    </body>
</html>

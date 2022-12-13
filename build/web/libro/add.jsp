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
                        <label for="nombre">Ingrese Título:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="titulo" id="titulo" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombre">Ingrese Ubicación:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="ufisica" id="ufisica" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Ingrese Cantidad Ejemplares:</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="cejemp" name="cejemp" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Autor:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="autor" name="autor" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Número de Páginas:</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="npaginas" name="npaginas" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Editorial:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="editorial" name="editorial" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese País:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="pais" name="pais" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese ISBN:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="isbn" name="isbn" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Año:</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="anio" name="anio" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Edición:</label>
                        <div class="input-group">
                            <input type="number" class="form-control" id="edicion" name="edicion" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Idioma:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="idioma" name="idioma" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Materia:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="materia" name="materia" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Descripción:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="descripcion" name="descripcion" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Registrar</button>
                </div>
            </form>
        </div>
    </body>
</html>

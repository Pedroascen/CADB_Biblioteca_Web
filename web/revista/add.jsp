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
            <form role="form" action="/CADB_Biblioteca_Web/revista?accion=insertar" method="POST">
                <input type="hidden" name="codMaterial">
                <h4>Agregar nueva Revista:</h4>
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
                        <label for="contrasenia">Ingrese Editorial:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="editorial" name="editorial" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                  
                    <div class="form-group">
                        <label for="issn">Ingrese ISSN:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="issn" name="issn" 
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
                        <label for="contrasenia">Ingrese Tamaño</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="tamano" name="tamano" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Periodicidad</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="periodicidad" name="periodicidad" 
                                   placeholder="" required>
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contrasenia">Ingrese Fecha de Publicación</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="fechapublicacion" name="fechapublicacion" 
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

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
            <form role="form" action="/CADB_Biblioteca_Web/cd?accion=insertar" method="POST">
                <input type="hidden" name="codMaterial">
                <h4 class="mt-4">Agregar nuevo CD:</h4>
                <div class="col-md-10">
                    <div class="form-group">
                        <label for="titulo">Título:</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="titulo" id="titulo" 
                                   placeholder="Ingrese el título del CD">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ufisica">Ubicación física:</label>
                        <div class="input-group">
                            <input type="ufisica" class="form-control" id="ufisica" name="ufisica" 
                                   placeholder="Ingrese la ubicación física del CD">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cejemp">Cantidad de ejemplares:</label>
                        <div class="input-group">
                            <input type="cejemp" class="form-control" id="cejemp" name="cejemp" 
                                   placeholder="Ingrese la cantidad de ejemplares">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="autor">Autor:</label>
                        <div class="input-group">
                            <input type="autor" class="form-control" id="autor" name="autor" 
                                   placeholder="Ingrese el nombre del autor">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="paispubli">País de publicación:</label>
                        <div class="input-group">
                            <input type="paispubli" class="form-control" id="paispubli" name="paispubli" 
                                   placeholder="Ingrese el país de pubicación">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="ciudadpub">Ciudad de publicación:</label>
                        <div class="input-group">
                            <input type="ciudadpub" class="form-control" id="ciudadpub" name="ciudadpub" 
                                   placeholder="Ingrese la Ciudad de publicación">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="anio_publi">Año de publicación:</label>
                        <div class="input-group">
                            <input type="anio_publi" class="form-control" id="anio_publi" name="anio_publi" 
                                   placeholder="Ingrese el año de publicación">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="volumen">Volumen:</label>
                        <div class="input-group">
                            <input type="volumen" class="form-control" id="volumen" name="volumen" 
                                   placeholder="Ingrese el volúmen">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="idioma">Idioma</label>
                        <div class="input-group">
                            <input type="idioma" class="form-control" id="idioma" name="idioma" 
                                   placeholder="Ingrese el idioma">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tema">Tema:</label>
                        <div class="input-group">
                            <input type="tema" class="form-control" id="tema" name="tema" 
                                   placeholder="Ingrese el tema">
                            <span class="input-group-addon"></span>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary">Guardar</button>
                </div>
            </form>
        </div>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Devolucion - Materiales</title>
    </head>
    <body>
        <jsp:include page="/components/menu_user.jsp"/>
        <div class="container mt-4">
            <nav class="navbar navbar-expand-lg navbar-light bg-light row justify-content-end">
                <a class="navbar-brand  mr-4" href="#">Realizar Devolucion: ${prestamo.getResultado()}</a>

                <form action="/CADB_Biblioteca_Web/prestamo_usuario?accion=devolucion&ir=${usuarioLogin.id_rol}" class="form-inline" method="POST">
                    <div class="input-group mb-2 mr-sm-2"> 
                        <input type="text" class="form-control mr-2" id="carnet" name="carnet" placeholder="Su Carnet" placeholder="Carnet" required>
                        <input type="text" class="form-control" name="codMaterial" id="codMaterial" placeholder="Codigo Material" required>
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">Devolver</button>
                </form>        
            </nav>
            <h4>Materiales Disponibles:</h4>
            <table id="resultado" class="table table-dark text-center">
                <thead>
                    <tr>
                        <th scope="col">Carnet</th>
                        <th scope="col">CodigoMaterial</th>
                        <th scope="col">Inicio</th>
                        <th scope="col">Fin</th>
                        <th scope="col">Mora</th>
                        <th scope="col">Estado</th>
                        <th scope="col">Opcion</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="prestamos" items="${prestamos}">
                        <tr>
                            <td>${prestamos.carnet}</td>
                            <td>${prestamos.codMaterial}</td>
                            <td>${prestamos.fecha_inicio}</td>
                            <td>${prestamos.fecha_fin}</td>
                            <td>${prestamos.mora}</td>
                            <td>${prestamos.estado}</td>
                            <td>
                                <a class="btn btn-primary" href="#" role="button" >Ver Info</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#resultado').DataTable();
        });
    </script>
</html>

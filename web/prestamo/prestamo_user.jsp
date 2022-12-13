<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prestamo - Materiales</title>
    </head>
    <body>
        <jsp:include page="/components/menu_user.jsp"/>
        <div class="container mt-4">
            <nav class="navbar navbar-expand-lg navbar-light bg-light row justify-content-end">
                <a class="navbar-brand  mr-4" href="#">Realizar Prestamo: ${prestamo.getResultado()}</a>

                <form action="/CADB_Biblioteca_Web/prestamo_usuario?accion=prestamo&ir=${usuarioLogin.id_rol}" class="form-inline" method="POST">
                    <div class="input-group mb-2 mr-sm-2"> 
                        <input type="text" class="form-control mr-2" id="carnet" name="carnet" placeholder="Su Carnet" placeholder="Carnet" required>
                        <input type="text" class="form-control" name="codMaterial" id="codMaterial" placeholder="Codigo Material" required>
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">Prestar</button>
                </form>        
            </nav>
            <h4>Materiales Disponibles:</h4>
            <table id="resultado" class="table table-dark text-center">
                <thead>
                    <tr>
                        <th scope="col">Codigo</th>
                        <th scope="col">Titulo</th>
                        <th scope="col">Cantidad</th>
                        <th scope="col">UB-Fisica</th>
                        <th scope="col">Opcion</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="material" items="${material}">
                        <tr>
                            <td>${material.codMaterial}</td>
                            <td>${material.titulo}</td>
                            <td>${material.cantDisponible}</td>
                            <td>${material.ubFisica}</td>
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

<%-- 
    Document   : prestamo
    Created on : Dec 9, 2022, 8:56:36 PM
    Author     : Rocio Abrego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="udb.cdba.beans.DispMaterialBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prestamo</title>
    </head>

    <body>
        <jsp:include page="/components/menu.jsp"/>
        <div class="container">
            <br>
            <h4>Realizar Préstamo</h4>
            <hr class="border border-4">
            <div class="row mt-4 mb-2">
                <div class="col-md-3">
                    <input type="radio" name="rbEstado" id="Disponibles" value="1" onclick="RadioButtonMaterialEstado(1)"> Disponibles
                </div>
                <div class="col-md-3">
                    <input type="radio" name="rbEstado" id="noDisponibles" value="0" onclick="RadioButtonMaterialEstado(0)"> No Disponibles
                </div>
            </div>
            <hr>
            <div class="row mt-4">
                <form role="form" action="/CADB_Biblioteca_Web/prestamo?accion=save" method="POST">
                    <div class="row">
                        <div class="col">
                            <label>Material ID</label>
                            <input type="text" class="form-control" name="materialId" id="materialId"
                                   placeholder="Material ID" value="">
                        </div>
                        <div class="col">
                            <label>Carnet ID</label>
                            <input type="text" class="form-control" id="carnetId" name="carnetId"
                                   placeholder="Carnet ID" value="">
                        </div>
                        <div class="col">
                            <br>
                            <input type="submit" class="btn btn-info mt-1" value="Realizar Préstamo">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row mt-4">
                <table id="resultado" class="display nowrap hide" style="width:100%">
                    <thead>
                        <tr>
                            <th>Material ID</th>
                            <th>Titulo</th>
                            <th>Ubicacion</th>
                            <th># Ejemplares</th>
                            <th># Disponibles</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listarMateriales}" var="material">
                            <tr>
                                <td>${material.getCodigoMaterial()}</td>
                                <td>${material.getTitulo()}</td>
                                <td>${material.getUbicacionFisica()}</td>
                                <td>${material.getCantidadEjemplares()}</td>
                                <td>${material.getCantidadDisponibles()}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <script>
        $(document).ready(function () {
            const paramsString = window.location.search;
            const urlParams = new URLSearchParams(paramsString);

            const rbEstado = urlParams.get('accion');

            if (rbEstado === "0") {
                document.getElementById("noDisponibles").checked = true;
                document.getElementById("Disponibles").checked = false;
            } else {
                document.getElementById("noDisponibles").checked = false;
                document.getElementById("Disponibles").checked = true;
            }


            $('#resultado').DataTable({
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
                    }
                });
        });

        function RadioButtonMaterialEstado(estado) {
            window.location.href = "/CADB_Biblioteca_Web/prestamo?accion=" + estado;
        }

    </script>
    <style>
        input[type=radio] {
            width: 28px;
            height: 28px;
        }
    </style>

</html>



<%-- 
    Document   : devolucion
    Created on : Dec 10, 2022, 4:59:21 PM
    Author     : Rocio Abrego
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="udb.cdba.beans.DispMaterialBean"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Devolucion</title>
    </head>

    <body>
        <jsp:include page="/menu.jsp" />
        <div class="container">
            <br>
            <h4>Realizar Devolucion</h4>
            <hr class="border border-4">
            <div class="row mt-4 mb-2">
                <div class="col-md-3">
                    <input type="radio" name="rbEstado" id="Activos" value="1" onclick="RadioButtonMaterialEstado(1)"> Activos
                </div>
                <div class="col-md-3">
                    <input type="radio" name="rbEstado" id="Inactivos" value="0" onclick="RadioButtonMaterialEstado(0)"> Inactivos
                </div>
            </div>
            <hr>
            <div class="row mt-4">
                <form role="form" action="/CADB_Biblioteca_Web/devolucion?accion=save" method="POST">
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
                            <input type="submit" class="btn btn-info mt-1" value="Realizar Devolucion">
                        </div>
                    </div>
                </form>
            </div>
            <div class="row mt-4">
                <table id="resultado" class="display nowrap hide" style="width:100%">
                    <thead>
                        <tr>
                            <th>Carnet ID</th>
                            <th>Material ID</th>
                            <th>Titulo</th>
                            <th>Fecha Inicio</th>
                            <th>Fecha Fin</th>
                            <th>Mora</th>
                            <th>Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listarPrestamos}" var="prestamo">
                            <tr>
                                <td>${prestamo.getCarnet()}</td>
                                <td>${prestamo.getCodigoMaterial()}</td>
                                <td>${prestamo.getTitulo()}</td>
                                <td>${prestamo.getFechaInicio()}</td>
                                <td>${prestamo.getFechaFin()}</td>
                                <td>${prestamo.getMora()}</td>
                                <td>${prestamo.getEstado()}</td>
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
                document.getElementById("Inactivos").checked = true;
                document.getElementById("Activos").checked = false;
            } else {
                document.getElementById("Inactivos").checked = false;
                document.getElementById("Activos").checked = true;
            }

            $('#resultado').css('display','table') ;
            $('#resultado').DataTable({});
            
        });

        function RadioButtonMaterialEstado(estado) {
            window.location.href = "/CADB_Biblioteca_Web/devolucion?accion=" + estado;
        }

    </script>
    <style>
        input[type=radio] {
            width: 28px;
            height: 28px;
        }
        
    </style>

</html>



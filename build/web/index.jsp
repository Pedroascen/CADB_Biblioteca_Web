<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <jsp:include page="/components/menu.jsp"/>
        <input type="hidden" id="Lrol_id" name="Lrol_id" value="<c:out value="${usuarioLogin.id_rol}"/>">
        <input type="hidden" id="Lcarnet" name="Lcarnet" value="<c:out value="${usuarioLogin.carnet}"/>">
        <div class="container">
            <c:forEach var="materiales" items="${materiales}">
                <div class="card mt-2 mb-2">
                    <div class="card-body">
                        <h5 class="card-title">Titulo: ${materiales.titulo}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Disponibles: ${materiales.cantDisponible}</h6>
                        <p class="card-text">
                           Codigo: ${materiales.codMaterial} Ubicación: ${materiales.ubFisica}
                        </p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </body>
</html>

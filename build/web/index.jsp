<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Bienvenido: ${usuarioLogin.carnet}</h1>
    </body>
</html>

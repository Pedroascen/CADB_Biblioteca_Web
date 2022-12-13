<%@page import="udb.cdba.beans.DataLoginBean"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="/components/menu.jsp"/>
        <h1>Error de autenticación: No está autorizado para acceder a este recurso.</h1>
        <a type="button" href="/CADB_Biblioteca_Web/Example?accion=info">Regresar</a>
    </body>
</html>

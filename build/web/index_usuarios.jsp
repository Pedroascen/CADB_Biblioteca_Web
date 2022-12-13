<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap 5 Example</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <jsp:include page="/components/menu_user.jsp"/>
        <div class="container-fluid p-5 bg-secondary text-white text-center">
            <h1>Biblioteca UDB</h1>
            <p>El conocimiento al alcance de todos!</p> 
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-sm-4">
                    <h3>Misión</h3>
                    <p>Proporcionar servicios de alta calidad a toda la población estudiantil...</p>
                    <p>Mediante nuestra gama de opciones</p>
                </div>
                <div class="col-sm-4">
                    <h3>Vision</h3>
                    <p>Desarrollar resiliencia en todos los usuarios de la biblioteca para lograr un mayor</p>
                    <p>alcance asi como mejorar constantemente nuestro contenido .</p>
                </div>
                <div class="col-sm-4">
                    <h3>Valores</h3>        
                    <p>Creatividad: Proporcionar conocimiento en formato digital con gran alcance en multiples formas</p>
                    <p>Equipo creador: Jazmine, Rocio, Carlos, Pedro, Stuardo</p>
                </div>
            </div>
        </div>

    </body>
</html>

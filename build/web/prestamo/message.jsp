<%-- 
    Document   : message
    Created on : Dec 9, 2022, 9:22:42 PM
    Author     : Rocio Abrego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
        <title>Prestamo</title>
    </head>
    <body>
    <style type="text/css">

        body
        {
            background:#f2f2f2;
        }

        .message
        {
            border:1px solid #f2f2f2;
            height:280px;
            border-radius:20px;
            background:#fff;
        }
        .message_header
        {
            background:#009EFF;
            padding:20px;
            border-radius:20px 20px 0px 0px;

        }
        
        .fail_header
        {
            background:#FED049;
            padding:20px;
            border-radius:20px 20px 0px 0px;

        }

        .check
        {
            margin:0px auto;
            width:50px;
            height:50px;
            border-radius:100%;
            background:#fff;
            text-align:center;
        }

        .check i
        {
            vertical-align:middle;
            line-height:50px;
            font-size:30px;
        }

        .fail
        {
            margin:0px auto;
            width:50px;
            height:50px;
            border-radius:100%;
            background:#fff;
            text-align:center;
        }

        .fail i
        {
            vertical-align:middle;
            line-height:50px;
            font-size:30px;
        }

        .content 
        {
            text-align:center;
        }

        .content  h1
        {
            font-size:25px;
            padding-top:25px;
        }

        .content a
        {
            width:200px;
            height:35px;
            color:#fff;
            border-radius:30px;
            padding:5px 10px;
            background:rgba(255,102,0,1);
            transition:all ease-in-out 0.3s;
        }

        .content a:hover
        {
            text-decoration:none;
            background:#000;
        }

    </style>
        <jsp:include page="/components/menu.jsp"/>
        <div class="container">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mx-auto mt-5">
                        <div class="message">
                            <c:if test="${prestamo.getPrestamoId() > 0}">
                                <div class="message_header">
                                    <div class="check"><i class="fa fa-check" aria-hidden="true"></i></div>
                                </div>
                                <div class="content">
                                    <h1>Prestamo #: ${prestamo.getPrestamoId()}</h1>
                                    <br>
                                    <p>${prestamo.getResultado()}</p>
                                    
                                    <a href="/CADB_Biblioteca_Web/prestamo?accion=1">Regresar</a>
                                </div>
                            </c:if>
                            
                            <c:if test="${prestamo.getPrestamoId() == 0}">
                                <div class="fail_header">
                                    <div class="fail"><i class="fa fa-times" aria-hidden="true"></i></div>
                                </div>
                                <div class="content">
                                    <h1>${prestamo.getResultado()}</h1>
                                    <a href="javascript:history.back()">Regresar</a>
                                </div>
                            </c:if>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
</html>


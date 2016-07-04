<%@page import="Interludio.Addcarrito"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : detallemed.jsp
    Created on : 13-jun-2016, 17:26:39
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="crudes.CompraCrud"%>
<%@page import="Clases.Compra"%>
<%@page import="Clases.Medicamentos"%>
<%@page import="crudes.MedicamentosCrud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/bootstrap-responsive.css"/>
        <link rel="stylesheet" href="css/signin.css"/>
        <link rel="stylesheet" href="css/estilos.css"/>
        <link rel="stylesheet" href="css/bootstrap.css"/>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
    </head>
    <body class="color1">

        <div class="row color2">
            <div class="col-xs-5"></div>
            <div class="col-xs-5">
                <br>
                <h2>
                    <b>Farmacia Lapule</b>
                    <br>
                    <span class="small">
                        <b>Remedios para la pobla</b>
                    </span>
                </h2>
            </div>
            <div class="col-xs-2">Web Developed by
                <b>Brayatan edwards</b>
            </div>
        </div>

        <div>
            <header>
                <nav class="navbar navbar-default navbar-static-top navbar-inverse">
                    <div class="container-fluid">
                        <div class="navbar-header">

                            <button type="button" name="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-1">
                                <span class="sr-only"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a href="index.jsp" class="navbar-brand active"> <b> La pule</b></a>
                        </div>

                        <div class="collapse navbar-collapse" id="navbar-1">
                            <ul class="nav navbar-nav">

                                <li>
                                    <a href="vmedicamentos.do">Ver medicamentos online</a>
                                </li>

                            </ul>

                            <form class="navbar-form navbar-left" role="search" action="">
                                <div class="form-group">

                                    <input type="text" name="name" value="" class="form-control" placeholder="Buscar medicamentos"></div>
                            </form>

                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a href="registrarusuario.jsp">Registrar</a>
                                </li>
                                <li>
                                    <a href="mostrarventas.do">Administrador</a>
                                </li>
                                <li>
                                    <a href="">Home</a>
                                </li>

                            </ul>
                        </div>
                    </div>

                </nav>
            </header>
        </div>

        <div class="container">

            <h1>
                <b>Detalle de compra</b> <br>

                <span class="small"> ${sessionScope.medica.nombre} Cod: ${sessionScope.medica.codigo} </span>
            </h1>

            <p>Precio c/u:  ${sessionScope.medica.precio} </p><br>           

            <p> Usted esta comprando con el rut ${param.txtrut} <br> 
                con fecha ${param.txtfecha}.

            </p>
            <br>
            Cantidad de productos: ${param.txtcantidad}  
            <br>

            <h4><b>${sessionScope.descuento}</b></h4>
            
            <h3><b>Subtotal: <span class="label label-default"> $ ${sessionScope.preciofinal} </span></b></h3>
            <h3><b>Total a pagar: <span class="label label-success"> $ ${sessionScope.compra.precio}</span></b></h3>
            <br>


            <a href="compraok.do?code=${param.txtrut}" class="btn btn-primary">Pagar</a>
            <a href="Vermedicamentos.jsp" class="btn btn-warning">Cancelar</a>

        </div>

    </body>
</html>

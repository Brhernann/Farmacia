<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
    Document   : administrador
    Created on : 08-jun-2016, 21:35:11
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="java.util.ArrayList"%>
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
        <title>Administrador</title>
    </head>
    <body>

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
                            <a href="mostrarventas.do" class="navbar-brand"> <b>Administrador</b></a>
                        </div>

                        <div class="collapse navbar-collapse" id="navbar-1">
                            <ul class="nav navbar-nav">

                                <li>
                                    <a href="Registrarmedicamento.jsp">Registrar medicamentos</a>
                                </li>
                                <li>
                                    <a href="Modificarmedicamento.jsp">Modificar medicamentos</a>
                                </li>
                                <li>
                                    <a href="Eliminarmedicamento.jsp">Eliminar medicamentos</a>
                                </li>
                            </ul>

                            <form class="navbar-form navbar-left" role="search" action="buscarm.do" method="POST">
                                <div class="form-group">

                                    <input type="text" name="txtbuscar" value="" class="form-control" placeholder="Buscar medicamento"></div>
                            </form>

                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <a href="listamedicamentos.do">Medicamentos Online</a>
                                </li>
                                <li class="dropdown"> 
                                    <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button">
                                        Clientes <span class="caret"></span></a>

                                    <ul class="dropdown-menu">

                                        <li><a href="Registrarc.jsp">Registrar Cliente</a></li>  
                                        <li><a href="validarc.jsp">Modificar Cliente</a></li>
                                        <li><a href="mostrarc.do">Ver Clientes</a> </li>
                                        <li> <a href="eliminarc.jsp">Eliminar Clientes</a></li>
                                    </ul>

                                </li>
                                <li>
                                    <a href="index.jsp">Cerrar</a>
                                </li>

                            </ul>
                        </div>
                    </div>

                </nav>
            </header>

        </div>


        <div class="row"> 


            <div class="col-lg-4">
                <br><br><br><br>


                <div class="row" >

                    <div class="col-lg-1"></div>
                    <div class="col-lg-10">


                        <div class="panel panel-primary">

                            <div class="panel-heading"><b >Total de ventas</b></div> 
                            <div class="panel-body"> 
                                Hasta el momento llevamos un total de <b> $${sessionScope.total}</b> de pesos.
                            </div>
                        </div>
                        <div class="panel panel-success">

                            <div class="panel-heading"><b >Usuarios registrados</b></div> 
                            <div class="panel-body"> 

                                Tenemos <b>${sessionScope.totalC}</b> clientes asociados.


                            </div>
                        </div>  


                    </div>
                    <div class="col-lg-1" ></div>

                </div>
            </div>
            <div class="col-lg-6">
                <h2 align= "center"><b> Ventas realizadas</b></h2>
                <br>

                <div id="div1">

                    <table class="table table-hover">


                        <tr class="success">

                            <th>Id</th>
                            <th>Fecha</th>
                            <th>Cantidad</th>
                            <th>Precio</th>
                            <th>Rut Cliente</th>
                            <th>Codigo Medicamento</th>
                            <th>Eliminar venta</th>

                        </tr>


                        <c:forEach var="m" items="${sessionScope.ventas}">

                            <tr>   

                                <td>${m.getId()}</td>
                                <td>${m.getFecha()}</td>
                                <td>${m.getCantidad()}</td>
                                <td>$${m.getPrecio()}</td>
                                <td>${m.getRutClie()}</td>
                                <td>${m.getCodMedic()}</td>
                                <td><a href="eliminarcompra.do?codi=${m.getId()}"><span class="glyphicon glyphicon-trash"></span></a></td>

                            </tr> 
                        </c:forEach>
                    </table>


                </div>
            </div>

            <div class="col-lg-2"></div>
        </div>

    </body>
</html>

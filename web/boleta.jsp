<%-- 
    Document   : boleta
    Created on : 14-jun-2016, 17:38:39
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="crudes.CompraCrud"%>
<%@page import="Clases.Compra"%>
<%@page import="java.util.ArrayList"%>
<%@page import="crudes.UsuarioCrud"%>
<%@page import="Clases.Usuario"%>
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

        <meta charset="utf-8">
        <title>Farmacia</title>

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
                            <a href="index.jsp" class="navbar-brand active"> <b> La pule</b></a>
                        </div>

                        <div class="collapse navbar-collapse" id="navbar-1">
                            <ul class="nav navbar-nav">

                                <li>
                                    <a href="vmedicamentos.do">Ver medicamentos online</a>
                                </li>

                            </ul>

                            <form class="navbar-form navbar-left" role="search" action="buscarm.do" method="POST">
                                <div class="form-group">

                                    <input type="text" name="txtbuscar" value="" class="form-control" placeholder="Buscar medicamento"></div>
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
            
            <%
            UsuarioCrud crud = new UsuarioCrud();
            Usuario u = crud.read(request.getParameter("code"));

            %>
            
           

        </div>

        <br>
        <br>
        <div class="container">

            <h3><p><b>Haz realizado una compra exitosa!</b></p>
                <span class="small">Sigue comprando remedios la pule!</span></h3>


            <div class="row">

                <div class="col-lg-3"></div>
                <div class="col-lg-6">

                    <div class="panel panel-success">
                        <div class="panel-heading"><h4><b>Detalle boleta</b></h4></div> 
                        <div class="panel-body">

                            <p><b>Numero de boleta:</b> 1847 </p>
                    
                            <p><b>Nombre de comprador:</b> <%=u.getNombre()%>  </p>
                            <p><b>Institucion previsional:</b> <%=u.getIp()%></p>
                            <p><b>Nombre de producto:</b> ${sessionScope.medica.nombre} </p>
                            <p><b>Cantidad comprada:</b> ${sessionScope.compraok.cantidad}</p>
                            <p><b>Fecha de compra:</b>  ${sessionScope.compraok.fecha} </p>
                            <p><b>Precio total:</b> $${sessionScope.compraok.precio} pesos. </p>
                        </div>

                    </div>    
                </div>
                <div class="col-lg-3"></div>


            </div>
        </div>


    </body>
</html>

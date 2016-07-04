<%--
    Document   : BuscarMedicamento
    Created on : 08-jun-2016, 21:02:54
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

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
                        <li class="active">
                            <a href="">Home</a>
                        </li>

                    </ul>
                </div>
            </div>

        </nav>
                </header>

            </div>

            <div class="row">

            <div class="col-md-1 col-sm-1 col-xs-1"></div>

                <div class="col-md-10 col-sm-10 col-xs-10 col-">

                    <div id="carousel-1" class="carousel slide" data-ride="carousel">

                        <ol class="carousel-indicators">

                            <li data-target="#carousel-1" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-1" data-slide-to="1"></li>
                            <li data-target="#carousel-1" data-slide-to="2"></li>
                        </ol>

                        <div class="carousel-inner img-rounded" role="listbox">

                            <div class="item active">

                                <img src="Images/farmacia.jpg" class="img-responsive" alt=""/>

                                <div class="carousel-caption">


                                </div>

                            </div>
                            <div class="item">

                                <img src="Images/farmacia1.jpg" class="img-responsive" alt=""/>
                                <div class="carousel-caption">

                                </div>

                            </div>
                            <div class="item">

                                <img src="Images/farmacia2.jpg" class="img-responsive" alt=""/>

                                <div class="carousel-caption">


                                </div>

                            </div>
                                           <div class="item">

                                <img src="Images/farmacia3.jpg" class="img-responsive" alt=""/>

                                <div class="carousel-caption">


                                </div>

                            </div>

                        </div>

                        <a href="#carousel-1" class="left carousel-control" role="button" data-slide="prev">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Anterior</span>
                        </a>

                        <a href="#carousel-1" class="right carousel-control" role="button" data-slide="next">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Siguiente</span>
                        </a>
                    </div>

                </div>

              <div class="col-md-1 col-sm-1 col-xs-1"></div>

            </div>
            <br>
                <div class=".main row">
                    <div class="col-xs-2"></div>
                    <div class="col-xs-4 container">
                        <p>Lorem ipssum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
                            irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                    
                    <div class="col-lg-6">
                        
                        <h2>$10.000 pesos de descuento <b>FONASA</b></h2>
                    </div>
                </div>

                <footer class="container col-xs-12">
                    <br>
                        <b>Ihernannmonster</b>
                        <br>
                            <br>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure
                                dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

                            </footer>

                        </body>
                    </html>

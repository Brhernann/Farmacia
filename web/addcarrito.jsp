<%-- 
    Document   : addcarrito
    Created on : 09-jun-2016, 23:29:28
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

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
        <link rel="stylesheet" href="css/datepicker.css"/>

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">

      var x;
      x=$(document);
      x.ready(lanzar);

      function lanzar(){
      var x;
        x=$(function(){
          $('.datepicker').datepicker();
        })
      }
    </script>
            
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito</title>
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
                                <li class="active">
                                    <a href="index.jsp">Home</a>
                                </li>

                            </ul>
                        </div>
                    </div>

                </nav>
            </header>

        </div>
        <%

            MedicamentosCrud crud = new MedicamentosCrud();
            Medicamentos m = crud.read(Integer.parseInt(request.getParameter("cod")));

        %>

        <div class="row">
            
                    <div class=" col-lg-12">

            <form action="addcarrito.do?cod=<%=m.getCodigo()%>" method="POST">

                <div class=" col-lg-4"></div>
                <div class="form-group col-lg-4 ">
       
                        <h3><b><%=m.getNombre()%> en <%=m.getTipo()%> </b></h3>
                    <br>
                     <div class="input-group">

                        <span class="input-group-addon">
                            <b>Rut</b>
                        </span>
                        <input type="text" name="txtrut" class="form-control" placeholder="Ingrese rut" autocomplete required />
                    </div>
                    <br>
                     <div class="input-group">

                        <span class="input-group-addon">
                            <b> Fecha</b>
                        </span>
                        <input type="text" name="txtfecha" class="form-control datepicker " placeholder="Ingrese fecha" />
                    </div>
                    
                    <br>
                    <div class="input-group">

                        <span class="input-group-addon ">
                            <b> Cantidad</b>
                        </span>
                        
                        <input type="number" name="txtcantidad" value="1" min="1" max="15"  class="form-control" />
                    </div>
                    
                    <h3><b>Precio <%=m.getPrecio()%> c/u; cod <%=m.getCodigo()%> </b>   </h3> 

                    <br>
                    <input type="submit" value="Detallar Compra" class="btn btn-success"/>
                </div>

            </form>   

        </div>
            
            
        </div>

    </body>
</html>

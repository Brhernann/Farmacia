<%-- 
    Document   : BuscarMedicamento
    Created on : 08-jun-2016, 21:02:54
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Clases.Medicamentos"%>
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

                <form class="navbar-form navbar-left" role="search" action="">
                    <div class="form-group">

                        <input type="text" name="name" value="" class="form-control" placeholder="Buscar"></div>
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
                
                
                
          <h2 align= "center"><b> Producto Econtrado</b></h2>
     <br>
      
 <div class="container">

               
               <table class="table table-hover">
               
        <tr class="success">
            
           <th>Codigo</th>
           <th>Nombre</th>
           <th>Precio</th>
           <th>Tipo</th>
           <th>Stock</th>
       </tr>
        <tr>   
           <td> ${sessionScope.Bcodigo.codigo} </td>
           <td> ${sessionScope.Bcodigo.nombre} </td>
           <td> ${sessionScope.Bcodigo.precio} </td>
           <td> ${sessionScope.Bcodigo.tipo} </td>
           <td> ${sessionScope.Bcodigo.stock} </td>
       </tr> 
      
           </table>
           </div>
    </body>
</html>

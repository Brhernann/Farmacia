<%-- 
    Document   : modificarc
    Created on : 10-jun-2016, 17:46:04
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<%@page import="Clases.Usuario"%>
<%@page import="crudes.UsuarioCrud"%>
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
                    <a href="mostrarventas.do" class="navbar-brand"> <b>La pule</b></a>
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

                    <form class="navbar-form navbar-left" role="search" action="">
                        <div class="form-group">

                            <input type="text" name="name" value="" class="form-control" placeholder="Buscar"></div>
                        </form>

                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <a href="listamedicamentos.do">Medicamentos online</a>
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
      
            <div class=" col-lg-12">
                
             <form action="modificarc.do" method="POST">
                 
            <div class=" col-lg-4"></div>
            <div class="form-group col-lg-4 ">
                
              <%
                
            
                UsuarioCrud crud = new UsuarioCrud();
                
                String rut = (String)request.getSession().getAttribute("Myrut");
                
       
                 
                 Usuario u = crud.read(rut);
                
                %>
                <h3><b>Modificar rut: </b> <span class="label label-primary"><%=u.getRut()%></span></h3>
                <br>
                <input type="text" name="txtnombre" value="<%=u.getNombre()%>" class="form-control" required autocomplete placeholder="Nombre" />
                <br>
                <input type="text" name="txtip" value="<%=u.getIp()%>"class="form-control" required autocomplete placeholder="Institucion previsional" />
                <br>
                <input type="text" name="txtedad" value="<%=u.getEdad()%>" class="form-control" required autocomplete placeholder="Edad" />
                <br>
                <input type="submit" value="Modificar" class="btn btn-success"/>
            </div>
                   
        </form>   
                
           </div>
    </body>
</html>

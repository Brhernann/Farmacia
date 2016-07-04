<%@page import="crudes.MedicamentosCrud"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Clases.Medicamentos"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Vermedicamentos
    Created on : 09-jun-2016, 1:03:49
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

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Medicamentos</title>
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

                    <li  class="active">
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
                            <a href="index.jsp">Home</a>
                        </li>

                    </ul>
                </div>
            </div>

        </nav>
                </header>

            </div>


        <h2 align= "center"> Catalogo Productos</h2>
        <br>

        <table border="0" width="700" align="center" >


            <%

                MedicamentosCrud cru = new MedicamentosCrud();

                ArrayList<Medicamentos> listam = (ArrayList<Medicamentos>) cru.readall();

                Medicamentos me = new Medicamentos();

                int salto = 0;

                for (int i = 0; i < listam.size(); i++) {

                    Medicamentos m = listam.get(i);


            %>

            <th>
                <%=m.getNombre()%><br>
                $<%=m.getPrecio()%><br>
                <%=m.getTipo()%><br>
                <a href="addcarrito.jsp?cod=<%=m.getCodigo()%>">Comprar</a> ||
                <a href="carritocompra.jsp?cod=<%=m.getCodigo()%>"><span class="glyphicon glyphicon-shopping-cart"> </span></a><br><br>
            </th>

            <%salto++;  if (salto == 3) { %>
            <tr>
            <%salto = 0; }}%>        

        </table>



    </body>
</html>

<%-- 
    Document   : ConsultarGenero
    Created on : 20/07/2024, 6:51:27 p. m.
    Author     : Pilum
--%>

<%@page import="java.util.List"%>
<%@page import="Control.AccionesGenMusica"%>
<%@page import="Modelo.generoMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Genero</title>
        <link href="
              https://cdn.jsdelivr.net/npm/bootswatch@5.3.3/dist/quartz/bootstrap.min.css
              " rel="stylesheet">
    </head>

    <body style="text-align: center">

        <div class="container">
            <div class="row gy-2 gx-0">

                <section class="col-md-1">

                </section>
                <section class="col-md-10">
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>
                    <br/>

                    <div class="card">
                        <div class="card-body">
                            <h2 class="card-title">Generos</h2>
                            <table class="table table-hover" border="2">
                                <thead>
                                    <tr class="table-primary">
                                        <th scope="row">ID</th>
                                        <th scope="row">NOMBRE GENERO</th>
                                        <th scope="row">OPCION 1</th>
                                        <th scope="row">OPCION 2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<generoMusica> lista = AccionesGenMusica.buscarGeneroAll();
                                        for (generoMusica ge : lista) {
                                    %>
                                    <tr class="table-info">
                                        <td><%= ge.getGenero_Cancion()%></td>
                                        <td><%= ge.getTipo_Genero_Cancion()%></td>
                                        <td><a class="btn btn-warning" href="editarGenero.jsp?id=<%= ge.getGenero_Cancion()%>">Editar</a></td>
                                        <td><a class="btn btn-primary" href="borrarGenero?id=<%= ge.getGenero_Cancion()%>">Borrar</a></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                            <br/>
                            <a class="btn btn-success" href="index.html"> Regresar al Menu Principal</a>      
                        </div>
                    </div>
                    <br/>       
                </section>
                <section class="col-md-1">

                </section>

            </div>

            <br>


        </div>
    </body>
</html>

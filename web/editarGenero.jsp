<%-- 
    Document   : editarGenero
    Created on : 20/07/2024, 8:06:26 p. m.
    Author     : Pilum
--%>

<%@page import="java.util.List"%>
<%@page import="Control.AccionesGenMusica"%>
<%@page import="Control.AccionesGenMusica"%>
<%@page import="Modelo.generoMusica"%>
<%@page import="Modelo.generoMusica"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Genero</title>
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
                        <div class="card-body" >
                            <h2>Actualizar Genero</h2>

                            <form method="post" name="actualizarGenero" action="actualizarGenero">
                                <table>
                                    <%
                                        int id = Integer.parseInt(request.getParameter("id"));
                                        generoMusica gene = AccionesGenMusica.buscarGeneroiD(id);
                                    %>
                                    <tr>
                                        <td>Id Genero Musica</td>
                                        <td><input type="hidden" name="idGenero" value="<%=gene.getGenero_Cancion()%>"></td>
                                    </tr>
                                    <tr>
                                        <td>Nombre Genero Musica</td>
                                        <td><input type="text" name="nombre2" class="form-control" size="30" value="<%=gene.getTipo_Genero_Cancion()%>"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <input  class="btn btn-info" type="submit" value="Actualizar">
                                        </td>
                                    </tr>
                                </table>

                            </form>

                        </div>
                    </div>


                </section>
                <section class="col-md-1">

                </section>
            </div>

        </div>




    </body>
</html>

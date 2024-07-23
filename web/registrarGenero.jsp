<%-- 
    Document   : registrarGenero
    Created on : 22/07/2024, 12:48:24 p. m.
    Author     : Pilum
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTRAR GENERO</title>
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
                    <br/>
                    <br/>
                    <br/>
                    <div class="card">
                        <div class="card-body" >
                            <h2>REGISTRAR GENERO</h2>

                            <div class="containerRegistroGenMusica">
                                <form method="post" name="registroGenMusica" action="guardarGenCancion">
                                    <table>
                                        <tr>
                                            <td>Nombre Genero Musica</td>
                                            <td><input  class="form-control" type="text" name="nombre" size="30"></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"> <input  class="btn btn-info" type="submit"
                                                                    value="Registrar Genero"></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>


                        </div>
                    </div>

                </section>
                <section class="col-md-1">

                </section>

            </div>
        </div>


    </body>
</html>

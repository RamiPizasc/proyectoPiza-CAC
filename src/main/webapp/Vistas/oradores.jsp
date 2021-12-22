<%-- 
    Document   : oradores
    Created on : 17 dic. 2021, 23:30:20
    Author     : Ramiro
--%>

<%@page import="modelo.OradoresDAO"%>
<%@page import="modelo.Oradores"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Administrar oradores</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="../estilos/styles.css" />
    </head>

    <body>
        <main>
                <section>
                    <h1 class="text-center">ABM Oradores</h1>
                    <div class="container">
                        <div class="row">
                            <a class="btn btn-success col-md-4 m-4" 
                               href="OradoresController?accion=nuevo">Agregar Orador</a>
                            <table class="table table-primary">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombres</th>
                                        <th>Apellidos</th>
                                        <th>Tema a exponer</th>
                                        <th>Modificar</th>
                                        <th>Eliminar</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<Oradores> resultado = null;
                                        OradoresDAO orador = new OradoresDAO();
                                        resultado = orador.listarOradores();

                                        for (int i = 0; i < resultado.size(); i++) {
                                            String ruta = "OradoresController?accion=modificar&id=" + resultado.get(i).getId();
                                            String rutaE = "OradoresController?accion=eliminar&id=" + resultado.get(i).getId();
                                    %>
                                    <tr>
                                        <td><%= resultado.get(i).getId()%></td>
                                        <td><%= resultado.get(i).getNombres()%></td>
                                        <td><%= resultado.get(i).getApellidos()%></td>
                                        <td><%= resultado.get(i).getExposicion()%></td>
                                        <td><a class="btn btn-success" href=<%= ruta%>>Modificar</a></td>
                                        <td><a class="btn btn-danger" href=<%= rutaE%>>Eliminar</a></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
        </main>
    </body>
</html>

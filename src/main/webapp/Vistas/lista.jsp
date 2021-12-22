<%-- 
    Document   : lista
    Created on : 22 dic. 2021, 14:02:47
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
        <title>Listado de oradores</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="../estilos/styles.css" />
    </head>

    <body>
        <main>
            <section>
                <nav class="navbar navbar-expand-lg bg-negro sticky-sm-top">
                    <div class="container-fluid">
                        <button
                            class="navbar-toggler bg-light"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#navbarNav"
                            aria-controls="navbarNav"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                            >
                            <span
                                class="
                                navbar-toggler-icon
                                bg-warning
                                border border-dark border-3
                                "
                                ></span>
                        </button>
                        <a href="../index.html" class="navbar-brand">
                            <img src="../img/codoacodo.png" alt="" id="logo" />
                            Conf Bs As
                        </a>
                    </div>

                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav nav-expand-lg text-nowrap text-end pe-5">
                            <!--con pe-5 agregamos padding al final de los elementos nav-link-->
                            <li class="nav-item">
                                <a
                                    class="nav-link active text-white"
                                    aria-current="page"
                                    href="#"
                                    >La conferencia</a
                                >
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#sec-oradores">Los oradores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#sec-lugar">El lugar y la fecha</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#sec-participante"
                                   >Conviértete en orador</a
                                >
                            </li>
                            <li class="nav-item">
                                <a
                                    class="nav-link cursor"
                                    id="tickets"
                                    onclick="comprarTicket()"
                                    >Comprar tickets</a
                                >
                            </li>
                            <!--agregamos id a este nav-link para cambiar color de enlace-->
                        </ul>
                    </div>
                </nav>
            </section>

            <section id="seccion">

                <section>
                    <h1 class="text-center">Listado de Oradores</h1>
                    <div class="container">
                        <div class="row">
                            <table class="table table-primary">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombres</th>
                                        <th>Apellidos</th>
                                        <th>Tema a exponer</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        List<Oradores> resultado = null;
                                        OradoresDAO orador = new OradoresDAO();
                                        resultado = orador.listarOradores();

                                        for (int i = 0; i < resultado.size(); i++) {
                                            int in = i;
                                    %>
                                    <tr>
                                        <td><%= resultado.get(in).getId()%></td>
                                        <td><%= resultado.get(in).getNombres()%></td>
                                        <td><%= resultado.get(in).getApellidos()%></td>
                                        <td><%= resultado.get(in).getExposicion()%></td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>

            </section>
        </main>

        <footer>
            <div class="container-fluid pb-3 pt-4 justify-content-evenly footer">
                <!--agregamos la clase footer para adaptar color de fondo y tamaños de letra desde CSS -->
                <div class="row text-center footer-anchors">
                    <div class="col mx-4">
                        <a href="#"
                           >Preguntas <br />
                            frecuentes</a
                        >
                    </div>
                    <div class="col mt-2 mx-3">
                        <a href="#">Contáctanos</a>
                    </div>
                    <div class="col mt-2 mx-3">
                        <a href="#">Prensa</a>
                    </div>
                    <div class="col mt-2 mx-3">
                        <a href="#">Conferencias</a>
                    </div>
                    <div class="col mx-3">
                        <a href="#"
                           >Términos y <br />
                            condiciones</a
                        >
                    </div>
                    <div class="col mt-2 mx-3">
                        <a href="#">Privacidad</a>
                    </div>
                    <div class="col mt-2 mx-5">
                        <a href="#">Estudiantes</a>
                    </div>
                </div>
            </div>
        </footer>

        <script src="../js/app.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
            integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
            crossorigin="anonymous"
        ></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
            integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
            crossorigin="anonymous"
        ></script>
    </body>
</html>


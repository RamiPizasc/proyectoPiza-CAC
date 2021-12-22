<%--
    Document   : nuevo
    Created on : 17 dic. 2021, 23:30:38
    Author     : Ramiro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Orador</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <h1 class="text-center">Agregar Orador</h1>
        <div class="container">
            <div class="row d-flex justify-content-center">
                <form class="p-5 w-50" action="OradoresController?accion=insert" method="POST">
                    <div class="mb-3">
                        <label for="nombre" class="form-label">Nombres</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" /> 
                    </div>
                    <div class="mb-3">
                        <label for="apellido" class="form-label">Apellidos</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" />
                    </div>
                    <div class="mb-3">
                        <label for="exposicion" class="form-label">Exposición</label>
                        <input type="text" class="form-control" id="exposicion" name="exposicion"/>
                    </div>
                    <button type="submit" class="btn btn-success">Agregar</button>
                </form>
            </div>
        </div>
    </body>
</html>

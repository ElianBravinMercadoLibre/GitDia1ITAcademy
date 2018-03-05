<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet src="bootstrap.css"/>
    <title>Listado Categorias</title>
</head>
<body>
    <!-- NAVBAR -->
    <div class="navbar navbar-inverse">
        <div class="container-fluid">
            <ul class="navbar-right nav navbar-nav">
                <li><a href="/grailsGit">Grails Git</a></li>
                <li><a href="/site">Sites</a></li>
                <li><a href="/category">Categories</a></li>
                <li><a href="/user">Users</a></li>
            </ul>
        </div>
    </div>

    <div class="col-xs-12 col-sm-offset-3 col-sm-6" style="margin-top: 25px">
        <form action="/grailsGit/siteList">
            <button type="submit" class="btn btn-success">Volver</button>
        </form>
        <table class="table">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Imagen</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${listaCat}" var="categoria">
                    <tr>
                        <td>${categoria.name}</td>
                        <td>${categoria.urlImage}</td>
                        <td>
                            <form action="/grailsGit/mostarCategoria/${categoria.id}">
                                <button type="submit" class="glyphicon glyphicon-search"></button>
                            </form>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>

    </div>
<br>

</div>
</body>
</html>
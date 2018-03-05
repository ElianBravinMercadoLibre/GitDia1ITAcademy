<!doctype html>
<html lang="en" class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.css"/>
    <title>Login</title>
</head>

<body>
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

    <div class="col-xs-12 col-sm-offset-3 col-sm-6">
        <form class="form" action="/grailsGit/siteList" method="POST">
            <div class="form-group">
                <label for="user">Username: </label>
                <input class="form-control" id="user" name="user" type="text" placeholder="Username" required/>
            </div>
            <div class="form-group">
                <label for="contrasena">Password: </label>
                <input class="form-control" id="contrasena" name="contrasena" type="password" placeholder="********" required/>
            </div>
            <button style="float: right;" class="btn btn-success">Ingresar</button>
        </form>
    </div>
</body>

</html>

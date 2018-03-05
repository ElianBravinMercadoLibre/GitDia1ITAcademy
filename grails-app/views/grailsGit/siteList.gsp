<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:stylesheet src="bootstrap.css"/>

    <title>Site List</title>

    <style>
        .activo {
            background-color: #2ecc71;
        }
        .inactivo {
            background-color: #ff6358;
        }
        tbody tr {
            transition: 0.15s;
            cursor: pointer;
        }
        tbody tr:hover {
            transform: scale(1.03);
            filter: brightness(80%);
        }
    </style>

    <script type="text/javascript">
        function redirect(id) {
            window.location = "/grailsGit/categoryList/" + id;
        }
    </script>

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
        <table class="table">
            <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Active</th>
            </tr>
            </thead>
            <tbody>
                <g:each in="${siteList}" var="site">
                    <tr class="site ${site.active ? 'activo' : 'inactivo'}" onclick="redirect(${site.id})">
                        <td>${site.id}</td>
                        <td>${site.name}</td>
                        <td>${site.active}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </div>
</body>
</html>
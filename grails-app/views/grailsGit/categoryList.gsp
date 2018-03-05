<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
    <g:each in="${listaCat}">
        <p>Nombre: ${it.name}</p>
        <p>Url: ${it.urlImage}</p>
        <form action="/grailsGit/mostarCategoria/${it.id}">
            <input type="submit" value="mostrar">
        </form>
        <br>
    </g:each>
</div>
</body>
</html>
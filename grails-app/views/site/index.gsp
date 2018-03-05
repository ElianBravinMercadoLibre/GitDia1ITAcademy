<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>

        <style>
            .activo {
                background-color: #2ecc71;
            }
            .inactivo {
                background-color: #e74c3c;
            }
        </style>
    </head>
    <body>
        <a href="#list-site" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-site" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <table>
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Active</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in="${siteList}" var="site">
                        <tr class="${site.active ? 'activo' : 'inactivo'}">
                            <td>${site.id}</td>
                            <td>${site.name}</td>
                            <td>${site.active}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>

            <div class="pagination">
                <g:paginate total="${siteCount ?: 0}" />
            </div>
        </div>
    </body>
</html>
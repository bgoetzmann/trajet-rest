
<%@ page import="trajet.rest.Trajet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trajet.label', default: 'Trajet')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trajet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trajet" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="numUtilisateur" title="${message(code: 'trajet.numUtilisateur.label', default: 'Num Utilisateur')}" />
					
						<g:sortableColumn property="numVehicule" title="${message(code: 'trajet.numVehicule.label', default: 'Num Vehicule')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trajetInstanceList}" status="i" var="trajetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${trajetInstance.id}">${fieldValue(bean: trajetInstance, field: "numUtilisateur")}</g:link></td>
					
						<td>${fieldValue(bean: trajetInstance, field: "numVehicule")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trajetInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

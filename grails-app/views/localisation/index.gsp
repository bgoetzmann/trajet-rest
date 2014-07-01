
<%@ page import="trajet.rest.Localisation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'localisation.label', default: 'Localisation')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-localisation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-localisation" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="anneeMoisJourHeureMinute" title="${message(code: 'localisation.anneeMoisJourHeureMinute.label', default: 'Annee Mois Jour Heure Minute')}" />
					
						<g:sortableColumn property="pointLocalisation" title="${message(code: 'localisation.pointLocalisation.label', default: 'Point Localisation')}" />
					
						<g:sortableColumn property="releveKm" title="${message(code: 'localisation.releveKm.label', default: 'Releve Km')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${localisationInstanceList}" status="i" var="localisationInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${localisationInstance.id}">${fieldValue(bean: localisationInstance, field: "anneeMoisJourHeureMinute")}</g:link></td>
					
						<td>${fieldValue(bean: localisationInstance, field: "pointLocalisation")}</td>
					
						<td>${fieldValue(bean: localisationInstance, field: "releveKm")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${localisationInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
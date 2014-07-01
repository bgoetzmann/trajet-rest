
<%@ page import="trajet.rest.Trajet" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trajet.label', default: 'Trajet')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trajet" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trajet" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trajet">
			
				<g:if test="${trajetInstance?.numUtilisateur}">
				<li class="fieldcontain">
					<span id="numUtilisateur-label" class="property-label"><g:message code="trajet.numUtilisateur.label" default="Num Utilisateur" /></span>
					
						<span class="property-value" aria-labelledby="numUtilisateur-label"><g:fieldValue bean="${trajetInstance}" field="numUtilisateur"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trajetInstance?.numVehicule}">
				<li class="fieldcontain">
					<span id="numVehicule-label" class="property-label"><g:message code="trajet.numVehicule.label" default="Num Vehicule" /></span>
					
						<span class="property-value" aria-labelledby="numVehicule-label"><g:fieldValue bean="${trajetInstance}" field="numVehicule"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trajetInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="trajet.points.label" default="Points" /></span>
					
						<g:each in="${trajetInstance.points}" var="p">
						<span class="property-value" aria-labelledby="points-label"><g:link controller="localisation" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:trajetInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${trajetInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

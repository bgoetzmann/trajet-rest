
<%@ page import="trajet.rest.Localisation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'localisation.label', default: 'Localisation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-localisation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-localisation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list localisation">
			
				<g:if test="${localisationInstance?.pointLocalisation}">
				<li class="fieldcontain">
					<span id="pointLocalisation-label" class="property-label"><g:message code="localisation.pointLocalisation.label" default="Point Localisation" /></span>
					
						<span class="property-value" aria-labelledby="pointLocalisation-label"><g:fieldValue bean="${localisationInstance}" field="pointLocalisation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${localisationInstance?.releveKm}">
				<li class="fieldcontain">
					<span id="releveKm-label" class="property-label"><g:message code="localisation.releveKm.label" default="Releve Km" /></span>
					
						<span class="property-value" aria-labelledby="releveKm-label"><g:fieldValue bean="${localisationInstance}" field="releveKm"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${localisationInstance?.timeLocalisation}">
				<li class="fieldcontain">
					<span id="timeLocalisation-label" class="property-label"><g:message code="localisation.timeLocalisation.label" default="Time Localisation" /></span>
					
						<span class="property-value" aria-labelledby="timeLocalisation-label"><g:fieldValue bean="${localisationInstance}" field="timeLocalisation"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:localisationInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${localisationInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

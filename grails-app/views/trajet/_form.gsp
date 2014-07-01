<%@ page import="trajet.rest.Trajet" %>



<div class="fieldcontain ${hasErrors(bean: trajetInstance, field: 'numUtilisateur', 'error')} required">
	<label for="numUtilisateur">
		<g:message code="trajet.numUtilisateur.label" default="Num Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numUtilisateur" type="number" value="${trajetInstance.numUtilisateur}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: trajetInstance, field: 'numVehicule', 'error')} required">
	<label for="numVehicule">
		<g:message code="trajet.numVehicule.label" default="Num Vehicule" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numVehicule" type="number" value="${trajetInstance.numVehicule}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: trajetInstance, field: 'points', 'error')} ">
	<label for="points">
		<g:message code="trajet.points.label" default="Points" />
		
	</label>
	<g:select name="points" from="${trajet.rest.Localisation.list()}" multiple="multiple" optionKey="id" size="5" value="${trajetInstance?.points*.id}" class="many-to-many"/>

</div>


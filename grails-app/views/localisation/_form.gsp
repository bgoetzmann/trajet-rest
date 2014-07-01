<%@ page import="trajet.rest.Localisation" %>



<div class="fieldcontain ${hasErrors(bean: localisationInstance, field: 'pointLocalisation', 'error')} ">
	<label for="pointLocalisation">
		<g:message code="localisation.pointLocalisation.label" default="Point Localisation" />
		
	</label>
	<g:textField name="pointLocalisation" value="${localisationInstance?.pointLocalisation}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: localisationInstance, field: 'releveKm', 'error')} ">
	<label for="releveKm">
		<g:message code="localisation.releveKm.label" default="Releve Km" />
		
	</label>
	<g:textField name="releveKm" value="${localisationInstance?.releveKm}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: localisationInstance, field: 'timeLocalisation', 'error')} ">
	<label for="timeLocalisation">
		<g:message code="localisation.timeLocalisation.label" default="Time Localisation" />
		
	</label>
	<g:textField name="timeLocalisation" value="${localisationInstance?.timeLocalisation}"/>

</div>


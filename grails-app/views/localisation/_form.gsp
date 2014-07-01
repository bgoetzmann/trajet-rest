<%@ page import="trajet.rest.Localisation" %>



<div class="fieldcontain ${hasErrors(bean: localisationInstance, field: 'anneeMoisJourHeureMinute', 'error')} required">
	<label for="anneeMoisJourHeureMinute">
		<g:message code="localisation.anneeMoisJourHeureMinute.label" default="Annee Mois Jour Heure Minute" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="anneeMoisJourHeureMinute" precision="day"  value="${localisationInstance?.anneeMoisJourHeureMinute}"  />

</div>

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


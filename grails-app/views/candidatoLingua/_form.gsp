<%@ page import="selecadmais.CandidatoLingua" %>



<div class="fieldcontain ${hasErrors(bean: candidatoLinguaInstance, field: 'candidato', 'error')} required">
	<label for="candidato">
		<g:message code="candidatoLingua.candidato.label" default="Candidato" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="candidato" name="candidato.id" from="${selecadmais.Candidato.list()}" optionKey="id" required="" value="${candidatoLinguaInstance?.candidato?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoLinguaInstance, field: 'lingua', 'error')} required">
	<label for="lingua">
		<g:message code="candidatoLingua.lingua.label" default="Lingua" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lingua" name="lingua.id" from="${selecadmais.Lingua.list()}" optionKey="id" required="" value="${candidatoLinguaInstance?.lingua?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: candidatoLinguaInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="candidatoLingua.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nivel" name="nivel.id" from="${selecadmais.Nivel.list()}" optionKey="id" required="" value="${candidatoLinguaInstance?.nivel?.id}" class="many-to-one"/>

</div>

